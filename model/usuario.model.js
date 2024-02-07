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
            console.log(error)
            resolve(result)
        })
    })
}

export async function resultadoModell(dataCompleta, animalSorteado, numeroAleatorio) {
    console.log(animalSorteado)
    return new Promise((resolve, reject) => {

        const data1 = new Date(dataCompleta).getTime()
        const data2 = new Date().getTime()

        if(data1 >= data2){
            const dataInvalida = { mensagem: "Sorteio ainda nao realizado" };
            resolve(dataInvalida);
            return
        }
        conexao.query(`SELECT * FROM sorteio WHERE dataSorteio = '${dataCompleta}'`, (error, result) => {
            if (result.length <= 0) {
                conexao.query(`INSERT INTO sorteio (idSorteio, dataSorteio, numeroMaquina, animalSorteado) VALUES(null,'${dataCompleta}',${numeroAleatorio},'${animalSorteado}')`, (errorInsert, resultInsert) => {
                    if (errorInsert) {
                        console.log(errorInsert)
                        reject(errorInsert);
                    } else {
                        conexao.query(`SELECT * FROM sorteio WHERE dataSorteio = '${dataCompleta}'`, (erro, resultado) => {
                            if (erro) {
                                reject(erro);
                            } else {
                                resolve(resultado);
                            }
                        });
                    }
                });
            } else {
                resolve(error);
            }
        });
    });
}

