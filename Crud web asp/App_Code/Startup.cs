using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Crud_web_asp.Startup))]
namespace Crud_web_asp
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
