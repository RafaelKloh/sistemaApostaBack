import { rejects } from "assert"
import { conexao } from "../conexao.js"
import { resolve } from "path"



export async function cadastrar(nome, email, senha) {
    return new Promise((resolve, reject) => {
        conexao.query(`SELECT * FROM usuario WHERE email = '${email}'`, (erroSelect, resultSelect) => {
            if (erroSelect) {
                reject(erroSelect);
            } else {
                if (resultSelect.length > 0) {
                    const usuariojaCadastrado = { mensagem: "Email ja cadastrado" };
                    resolve(usuariojaCadastrado);
                } else {
                    conexao.query(`INSERT INTO usuario VALUES(null, '${nome}','${email}','${senha}',1)`, (error, result) => {
                        if (error) {
                            reject(error);
                        } else {
                            conexao.query(`SELECT * FROM usuario WHERE idUsuario = ${result.insertId}`, (erroSelectUsuario, resultSelectUsuario) => {
                                if (erroSelectUsuario) {
                                    reject(erroSelectUsuario);
                                } else {
                                    resolve(resultSelectUsuario);
                                }
                            });
                        }
                    });
                }
            }
        });
    });
}


export async function apostaModell(idUsuario, numeroUsuario, dataCompleta, idFormaPagamento, valorAposta) {
    return new Promise((resolve, rejects) => {
        conexao.query(`INSERT INTO aposta VALUES(null, ${idUsuario},${numeroUsuario},'${dataCompleta}',${idFormaPagamento},${valorAposta})`, (error, result) => {
            conexao.query(`SELECT * FROM aposta WHERE idAposta = ${result.insertId}`,(errorSelect,resultSelect)=>{
                resolve(resultSelect)
            })
            
        })
    })
}


export async function resultadoApostaModell(dataSelect) {
    console.log(dataSelect)
    return new Promise((resolve, rejects) => {
            conexao.query(`SELECT 
            a.idAposta,
            a.idUsuario,
            a.numeroUsuario,
            a.data,
            s.numeroMaquina,
            s.animalSorteado
        FROM 
            aposta a
        JOIN 
            sorteio s ON a.data = s.dataSorteio
        WHERE 
            s.dataSorteio = '${dataSelect}';
        `,(errorSelect,resultSelect)=>{
                console.log(resultSelect)
                resolve(resultSelect)
            })
        })
}

export async function resultadoModell(dataCompleta, animalSorteado, numeroAleatorio) {
    return new Promise((resolve, reject) => {
        //data pega do front
        const dataSelect = new Date(dataCompleta);
        //dataSelect.setUTCHours(0, 0, 0, 0);
        let data1 = dataSelect;

        // Data de agora
        const dataAtual = new Date();
        dataAtual.setUTCHours(0, 0, 0, 0);
        const data2 = dataAtual;



        // if(data1.getHours() >= 21){
        //     data1.setDate(data1.getDate())
        // }
        // if(data1.getDate() == data2.getDate()){
        //     const dataInvalida = { mensagem: "dia de hoje" };
        //     resolve(dataInvalida);
        //     return;
        // }


        if (data1 >= data2) {
            const dataInvalida = { mensagem: "Sorteio ainda não realizado" };
            resolve(dataInvalida);
            return;
        }

        const dataFinal = new Date(data1)
        const ano = dataFinal.getFullYear()
        let mes = dataFinal.getMonth() + 1
        let dia = dataFinal.getDate() + 1
        if (mes < 10) {
            mes = `0${mes}`
        }
        if (dia < 10) {
            dia = `0${dia}`
        }
        const dataFinalFormatada = dia + "-" + mes + "-" + ano

        conexao.query(`SELECT * FROM sorteio WHERE dataSorteio = '${dataFinalFormatada}'`, (error, result) => {
            if (result.length <= 0) {
                conexao.query(`INSERT INTO sorteio (idSorteio, dataSorteio, numeroMaquina, animalSorteado) VALUES(null,'${dataFinalFormatada}',${numeroAleatorio},'${animalSorteado}')`, (errorInsert, resultInsert) => {
                    if (errorInsert) {
                        reject(errorInsert);
                    } 
                    });
            }
            else {
                conexao.query(`SELECT * FROM sorteio WHERE dataSorteio = '${dataFinalFormatada}'`, (erro, resultado) => {
                    if (erro) {
                        reject(erro);
                    } else {
                        resolve(resultado);
                    }
                })};
        });
    });
}


