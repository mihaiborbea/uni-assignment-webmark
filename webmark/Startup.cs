using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(webmark.Startup))]
namespace webmark
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
