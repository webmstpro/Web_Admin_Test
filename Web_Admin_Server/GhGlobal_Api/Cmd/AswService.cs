using Amazon;
using Amazon.SimpleEmail;
using Amazon.SimpleEmail.Model;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;

namespace GhGlobal_Api.Cmd
{
    public class AswService
    {
        // 비밀번호 찾기 및 AWS Email Send
        public void SetAWSEmailSend(string RootPath, string receiverAddress, string sPass, string nLan)
        {
            var ContentJson = new Cmd.JsonFiles().GetJsonRead(RootPath+"\\JsonFiles\\", "gPwfindEmail.json", nLan);
            var jsonArry = JsonConvert.DeserializeObject<dynamic>(ContentJson);

            string subject = jsonArry[0].dataTxt[0].subject;
            string textBody = "";
            string htmlBody = "";

            textBody = jsonArry[0].dataTxt[0].textBody01
                + jsonArry[0].dataTxt[0].textBody02
                + jsonArry[0].dataTxt[0].textBody03
                + jsonArry[0].dataTxt[0].textBody04
                + sPass
                + jsonArry[0].dataTxt[0].textBody05
                + jsonArry[0].dataTxt[0].textBody06;

            htmlBody = jsonArry[0].dataHtml[0].HtmlBody01
                + jsonArry[0].dataHtml[0].HtmlBody02
                + jsonArry[0].dataHtml[0].HtmlBody03
                + jsonArry[0].dataHtml[0].HtmlBody04
                + jsonArry[0].dataHtml[0].HtmlBody05
                + sPass
                + jsonArry[0].dataHtml[0].HtmlBody06
                + jsonArry[0].dataHtml[0].HtmlBody07
                + jsonArry[0].dataHtml[0].HtmlBody08;
    
            using (var client = new AmazonSimpleEmailServiceClient("AKIAI6QFRSD7ABJMH2EA", "ZlCIlABHANvUlWqdP/mCoZ9G9TPJV/703DOX5lDW", RegionEndpoint.USWest2))
            {
                string senderAddress = "account@playcoin.game";

                var sendRequest = new SendEmailRequest
                {
                    Source = senderAddress,
                    Destination = new Destination
                    {
                        ToAddresses =
                        new List<string> { receiverAddress }
                    },
                    Message = new Amazon.SimpleEmail.Model.Message
                    {
                        Subject = new Amazon.SimpleEmail.Model.Content(subject),
                        Body = new Body
                        {
                            Html = new Amazon.SimpleEmail.Model.Content
                            {
                                Charset = "UTF-8",
                                Data = htmlBody
                            },
                            Text = new Amazon.SimpleEmail.Model.Content
                            {
                                Charset = "UTF-8",
                                Data = textBody
                            }
                        }
                    },
                };
                try
                {
                    Console.WriteLine("Sending email using Amazon SES...");
                    //var response = client.SendEmail(sendRequest);
                    var response = client.SendEmailAsync(sendRequest);
                    Console.WriteLine("The email was sent successfully.");
                    //var errCnt = new ObjectParameter("errCnt", typeof(int));
                    // 이메일 로그
                    //DbCon.sp_User_Info_Email_History(receiverAddress, htmlBody, "JOIN_COMPLATE", errCnt);
                }
                catch (Exception ex)
                {
                    Console.WriteLine("The email was not sent.");
                    Console.WriteLine("Error message: " + ex.Message);
                }
            }
        }
    }
}
