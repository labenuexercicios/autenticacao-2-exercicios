import { BaseError } from "./BaseError";

export class ForbiddenRequestError extends BaseError {
    constructor(
        message: string = "Usuário não autenticado" // mensagem de erro padrão caso não seja enviado um argumento
    ) {
        super(403, message)
    }
}