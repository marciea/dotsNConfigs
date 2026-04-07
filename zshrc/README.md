<div>
  <h1 align=center style="font-size:24px;">【Preview of zshrc】</h1>
</div>

> [!IMPORTANT]
> There are a few prerequisites in order for full functionality, as the look and feel is entirely dependent on external tools

<div>
  <h2>Prerequisites</h2>
</div>

- ZSH 
  - Reasoning: OMZ does not function without this shell, alternatively there is [Oh My Bash](https://ohmybash.nntoan.com/) but it gives relatively less functionality.
- [Oh My Zsh(OMZ)](https://ohmyz.sh/)
  - Reasoning: supplies various useful plugins to the terminal (e.g. [web-search](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/web-search)) as well as an easier means of plugin management for tools not directly tied to this project
- [Kitty](https://sw.kovidgoyal.net/kitty/)
  - Reasoning: Allows for image rendering within the terminal due to the Kitty protocol, as well as a means of theme customization for the colors within the terminal to achieve the desired look.
- [fzf](https://github.com/junegunn/fzf)
- [bat](https://github.com/sharkdp/bat)

>[!NOTE] 
> Tools like fzf and bat are needed for custom functions included in the dot file.

<div>
  <p> These two will serve importance to full functionality, although some might opt to not do some portions of these as they might be seen as unnecessary to their workflow.</p>
</div>

<div>
  <h2>Installation steps</h2>
</div>

>[!NOTE]
> The `.zshrc` file contains plugin list already pre-configured, you just need to clone the repository to your host/device.

- Install [ohmyzsh](https://ohmyz.sh/#install)
- Clone the [Fast syntax highlighting Github repo](https://github.com/zdharma-continuum/fast-syntax-highlighting?tab=readme-ov-file#oh-my-zsh)
- Clone the [Zsh auto suggestions Github repo](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh)

