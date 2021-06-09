 public static string inquire(string TransactionId, int CompanyId)
        {
            string result = "";

            //MailParameters mailParameters= mailParametersoperations.SelectMailParameterByActive(true, CompanyId);
            string userName = "john_doe@greenanimalsbank.com";// mailParametre.Usermail;
            string apiKey = "3038d5857b9141c7a65a161826fe991d";// Crypto.Decrypt(mailParametre.Userkey);

            RestClient client = new RestClient();
            client.BaseUrl = new Uri("https://mails/test/status/" + TransactionId);

            RestRequest request = new RestRequest();
            request.AddParameter("username", userName);
            request.AddParameter("api_key", apiKey);

            request.Method = Method.GET;
            var response = client.Execute(request);

            if (response != null)
            {
                result = response.Content;
            }

            return result;

        }