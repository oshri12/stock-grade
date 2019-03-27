using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(stock_grade.Startup))]
namespace stock_grade
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
