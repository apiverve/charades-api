declare module '@apiverve/charades' {
  export interface charadesOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface charadesResponse {
    status: string;
    error: string | null;
    data: CharadesGeneratorData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface CharadesGeneratorData {
      word:     null | string;
      category: null | string;
  }

  export default class charadesWrapper {
    constructor(options: charadesOptions);

    execute(callback: (error: any, data: charadesResponse | null) => void): Promise<charadesResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: charadesResponse | null) => void): Promise<charadesResponse>;
    execute(query?: Record<string, any>): Promise<charadesResponse>;
  }
}
