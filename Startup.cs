using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Environment_Green.Startup))]
namespace Environment_Green
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
