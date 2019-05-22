using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Text;

namespace GhGlobal_Api.Cmd
{
    public class JsonFiles
    {
        // JsonData 파일에서 얻어오기
        public string GetJsonRead(string filePath, string fileName, string _sLanguage)
        {

            var Jsondata = new Dictionary<string, string>();

            var file = System.IO.File.ReadAllText(filePath + "\\" + fileName, Encoding.Default);
            try
            {
                //var parseJson = JObject.Parse(file);  // 단일 일때
                JArray jsonArray = JArray.Parse(file);  // 배열 일때

                foreach (var item in jsonArray)
                {
                    var sdfg = item["Language"].ToString();
                    if (_sLanguage == item["Language"].ToString())
                    {
                        JArray jsonArray1 = JArray.Parse(item["data"].ToString());
                        return jsonArray1.ToString();
                        //return Json(jsonArray1);
                    }
                }
            }
            catch (Exception e)
            {
                Jsondata.Add("rCnt", "-1");
                Jsondata.Add("rVal", e.Message);
            }

            return JsonConvert.SerializeObject(Jsondata, Formatting.Indented).ToString();
        }
        
    }
}
