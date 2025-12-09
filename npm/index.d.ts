declare module '@apiverve/charades' {
  export interface charadesOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface charadesResponse {
    status: string;
    error: string | null;
    data: CharadesGeneratorData;
    code?: number;
  }


  interface CharadesGeneratorData {
      word:     string;
      category: string;
  }

  export default class charadesWrapper {
    constructor(options: charadesOptions);

    execute(callback: (error: any, data: charadesResponse | null) => void): Promise<charadesResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: charadesResponse | null) => void): Promise<charadesResponse>;
    execute(query?: Record<string, any>): Promise<charadesResponse>;
  }
}
