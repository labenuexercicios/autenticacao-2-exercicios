import z from "zod"
import { UserModel } from "../models/User"

export interface GetUsersInputDTO {
  q: string,
  token: string
}

// UserModel é a estrutura de User que será devolvida para o Front (sem password)
export type GetUsersOutputDTO = UserModel[]

export const GetUsersSchema = z.object({
  q: z.string().min(1).optional(),
  token: z.string(
    {
      required_error: "'token' é obrigatório",
      invalid_type_error: "'token' deve ser do tipo string"
    }
  )
}).transform(data => data as GetUsersInputDTO)