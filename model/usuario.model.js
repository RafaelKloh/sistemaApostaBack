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