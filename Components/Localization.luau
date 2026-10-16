local Localization = {}

local Translations = {
    ["General"] = "Geral",
    ["Exploits"] = "Explorações",
    ["Visuals"] = "Visuais",
    ["Floors"] = "Andares",
    ["Character"] = "Personagem",
    ["Settings"] = "Configurações",
    ["Menu"] = "Menu",
    ["Open Keybind Menu"] = "Abrir menu de teclas",
    ["Custom Cursor"] = "Cursor personalizado",
    ["UI Style"] = "Estilo da interface",
    ["DPI Scale"] = "Escala de DPI",
    ["Menu bind"] = "Atalho do menu",
    ["Menu keybind"] = "Tecla de atalho do menu",
    ["Copy Discord Invite"] = "Copiar convite do Discord",
    ["Unload"] = "Descarregar",
    ["Language"] = "Idioma",
    ["Door Reach"] = "Alcance de portas",
    ["Disable Idle Kick"] = "Desativar expulsão por inatividade",
    ["Prompt Reach Multiplier"] = "Multiplicador de alcance de interação",
    ["Instant Prompts"] = "Interações instantâneas",
    ["Prompt Clip"] = "Atravessar prompts",
    ["Auto Breaker Box"] = "Caixa de disjuntores automática",
    ["Auto Solve Anchors"] = "Resolver âncoras automaticamente",
    ["Auto Heartbeat Minigame"] = "Minijogo Heartbeat automático",
    ["Auto Unlock Padlock"] = "Destrancar cadeado automaticamente",
    ["Unlock Distance"] = "Distância para destrancar",
    ["Guess Library Code"] = "Descobrir código da biblioteca",
    ["Spectate Entity"] = "Observar entidade",
    ["Play Again"] = "Jogar novamente",
    ["Return to Lobby"] = "Voltar ao lobby",
    ["Reset Character"] = "Reiniciar personagem",
    ["Bypass Giggle"] = "Ignorar Giggle",
    ["Bypass Dupe"] = "Ignorar Dupe",
    ["Bypass Eyes"] = "Ignorar Eyes",
    ["Bypass Lookman"] = "Ignorar Lookman",
    ["Bypass Gloombat Eggs"] = "Ignorar ovos de Gloombat",
    ["Bypass Seek Obstructions"] = "Ignorar obstáculos do Seek",
    ["Bypass Vacuum"] = "Ignorar vácuo",
    ["Bypass Killbricks"] = "Ignorar blocos fatais",
    ["Bypass Seeking Wall"] = "Ignorar parede do Seek",
    ["Bypass Snare"] = "Ignorar Snare",
    ["Bypass Banana"] = "Ignorar banana",
    ["Bypass Jeff"] = "Ignorar Jeff",
    ["Anticheat Bypass"] = "Contorno do antitrapaça",
    ["Manipulation Method"] = "Método de manipulação",
    ["Infinite Items"] = "Itens infinitos",
    ["Crouch Spoof"] = "Simular agachamento",
    ["Remove Screech"] = "Remover Screech",
    ["Remove Halt"] = "Remover Halt",
    ["Remove A-90"] = "Remover A-90",
    ["Remove Dread"] = "Remover Dread",
    ["Remove Surge"] = "Remover Surge",
    ["No Screech Damage"] = "Sem dano do Screech",
    ["No Halt Damage"] = "Sem dano do Halt",
    ["No A-90 Damage"] = "Sem dano do A-90",
    ["No Surge Damage"] = "Sem dano do Surge",
    ["Remove Footstep Sounds"] = "Remover sons de passos",
    ["Remove Jammin Music"] = "Remover música Jammin",
    ["Remove Interacting Sounds"] = "Remover sons de interação",
    ["Field of View"] = "Campo de visão",
    ["Remove Camera Shake"] = "Remover tremor da câmera",
    ["Remove Camera Bobbing"] = "Remover balanço da câmera",
    ["Remove Cutscenes"] = "Remover cenas",
    ["Remove Fog"] = "Remover neblina",
    ["Wall Check"] = "Verificação de paredes",
    ["Viewmodel Offset"] = "Deslocamento da visão da mão",
    ["Transparent Hiding Spots"] = "Esconderijos transparentes",
    ["Disable Glitch Jumpscare"] = "Desativar susto do Glitch",
    ["Disable Timothy Jumpscare"] = "Desativar susto do Timothy",
    ["Disable Void Jumpscare"] = "Desativar susto do Void",
    ["Disable Hide Vignette"] = "Desativar efeito visual do Hide",
    ["Disable Firedamp Effect"] = "Desativar efeito de Firedamp",
    ["Disable Entity Jumpscares"] = "Desativar sustos das entidades",
    ["Notify Entities"] = "Notificar entidades",
    ["Notify Items"] = "Notificar itens",
    ["Notify Library Code"] = "Notificar código da biblioteca",
    ["Notify Oxygen Level"] = "Notificar nível de oxigênio",
    ["Notify Haste Time"] = "Notificar tempo do Haste",
    ["Notify Chat"] = "Notificar mensagens do chat",
    ["Notify Style"] = "Estilo das notificações",
    ["Sound Volume"] = "Volume do som",
    ["Play Sound"] = "Reproduzir som",
    ["Keep Notifications"] = "Manter notificações",
    ["Test Notification"] = "Testar notificação",
    ["Rainbow Effect"] = "Efeito arco-íris",
    ["Auto Steer Minecart"] = "Controlar carrinho automaticamente",
    ["Turn Distance"] = "Distância da curva",
    ["Crouch Distance"] = "Distância para agachar",
    ["Pathfind Timeout"] = "Tempo limite de busca de caminho",
    ["Ignore A-60"] = "Ignorar A-60",
    ["Show Path"] = "Mostrar caminho",
    ["Spoof Footsteps"] = "Simular passos",
    ["Auto Complete Dam Seek"] = "Completar perseguição da represa automaticamente",
    ["Auto Complete Cringle"] = "Completar Cringle automaticamente",
    ["Show Seek Path"] = "Mostrar caminho do Seek",
    ["Seek Path"] = "Caminho do Seek",
    ["Show Eyestalk Path"] = "Mostrar caminho dos tentáculos",
    ["Eyestalk Path"] = "Caminho dos tentáculos",
    ["Delete Seek Trigger"] = "Remover gatilho do Seek",
    ["Delete Figure"] = "Remover Figure",
    ["Infinite Revives"] = "Ressurreições infinitas",
    ["Figure Godmode"] = "Modo invencível contra Figure",
    ["Remove Basement Gate"] = "Remover portão do porão",
    ["Remove Paintings Door"] = "Remover porta das pinturas",
    ["Remove Skeleton Door"] = "Remover porta do esqueleto",
    ["Knob Farm"] = "Farm de Knobs",
    ["Start Knob Farm"] = "Iniciar farm de Knobs",
    ["Start Death Farm"] = "Iniciar farm de mortes",
    ["Copy Death Farm Loadstring"] = "Copiar loadstring do farm de mortes",
    ["Auto Join Elevator"] = "Entrar no elevador automaticamente",
    ["Cycle Achievements"] = "Alternar conquistas",
    ["Cycle Delay"] = "Intervalo de alternância",
    ["The Hotel"] = "O Hotel",
    ["The Mines"] = "As Minas",
    ["The Backdoor"] = "A Backdoor",
    ["The Rooms"] = "As Salas",
    ["The Outdoors"] = "Área Externa",
    ["Battle Mode"] = "Modo de batalha",
    ["Retro Mode"] = "Modo retrô",
    ["Rush Mode"] = "Modo Rush",
    ["Super Hard Mode"] = "Modo superdifícil",
    ["Quick Play"] = "Jogo rápido",
    ["User Info"] = "Informações do usuário",
    ["Executor Info"] = "Informações do executor",
    ["Ignore List"] = "Lista de ignorados",
    ["Auto Closet"] = "Armário automático",
    ["Velocity Manipulation"] = "Manipulação de velocidade",
    ["Item List"] = "Lista de itens",
    ["Position Spoof"] = "Simulação de posição",
    ["Third Person"] = "Terceira pessoa",
    ["X Offset"] = "Deslocamento X",
    ["Y Offset"] = "Deslocamento Y",
    ["Z Offset"] = "Deslocamento Z",
    ["Entity List"] = "Lista de entidades",
    ["Hiding Spots"] = "Esconderijos",
    ["Water Pump"] = "Bomba d'água",
    ["Vine Lever"] = "Alavanca de cipó",
    ["Gate Button"] = "Botão do portão",
    ["Features highlighted in red do not work in the current floor."] = "Os recursos destacados em vermelho não funcionam neste andar.",
    ["English"] = "Inglês",
    ["Português (Brasil)"] = "Português (Brasil)",
    ["Speed Boost"] = "Aumento de velocidade",
    ["Enable Speed Boost"] = "Ativar aumento de velocidade",
    ["Increases your walkspeed by the specified amount."] = "Aumenta a velocidade de caminhada pelo valor definido.",
    ["Fly"] = "Voar",
    ["Allows you to freely fly around the map."] = "Permite voar livremente pelo mapa.",
    ["Fly Speed"] = "Velocidade de voo",
    ["Noclip"] = "Atravessar paredes",
    ["Noclip Better"] = "Noclip melhorado",
    ["Allows your character to pass through solid objects."] = "Permite atravessar objetos sólidos.",
    ["Uses a more aggressive collision bypass and disables auxiliary collision parts. May be less stable on some floors."] = "Usa um método de colisão mais agressivo e desativa peças auxiliares. Pode ser menos estável em alguns andares.",
    ["Remove Closet Delay"] = "Remover atraso do armário",
    ["Removes the short window where you can't exit out of a closet after the animation finishes."] = "Remove o pequeno atraso para sair do armário após a animação.",
    ["Remove Acceleration"] = "Remover aceleração",
    ["Prevents your character from sliding while moving."] = "Impede que o personagem deslize durante o movimento.",
    ["Enable Jumping"] = "Ativar pulo",
    ["Allows your character to jump."] = "Permite que o personagem pule.",
    ["Enable Sliding"] = "Ativar deslizar",
    ["Allows your character to slide."] = "Permite que o personagem deslize.",
    ["Infinite Jumps"] = "Pulos infinitos",
    ["Allows you to jump while in the air."] = "Permite pular enquanto estiver no ar.",
    ["ESP"] = "ESP",
    ["Enable ESP"] = "Ativar ESP",
    ["Show Distance"] = "Mostrar distância",
    ["Fill Transparency"] = "Transparência do preenchimento",
    ["Outline Transparency"] = "Transparência do contorno",
    ["Text Transparency"] = "Transparência do texto",
    ["Text Outline Transparency"] = "Transparência do contorno do texto",
    ["Fade Time"] = "Duração do esmaecimento",
    ["Render Limit"] = "Limite de renderização",
    ["Text Size"] = "Tamanho do texto",
    ["Text Font"] = "Fonte do texto",
    ["Tracer Origin"] = "Origem das linhas",
    ["Tracer Thickness"] = "Espessura das linhas",
    ["Enable Tracers"] = "Ativar linhas",
    ["Arrow Radius"] = "Raio das setas",
    ["Enable Arrows"] = "Ativar setas",
    ["Rainbow"] = "Arco-íris",
    ["Entity ESP"] = "ESP de entidades",
    ["Item ESP"] = "ESP de itens",
    ["Objective ESP"] = "ESP de objetivos",
    ["Door ESP"] = "ESP de portas",
    ["Player ESP"] = "ESP de jogadores",
    ["Hiding Spot ESP"] = "ESP de esconderijos",
    ["Chest ESP"] = "ESP de baús",
    ["Currency ESP"] = "ESP de moedas",
    ["Ladder ESP"] = "ESP de escadas",
    ["Color"] = "Cor",
    ["Distance"] = "Distância",
    ["Enabled"] = "Ativado",
    ["Disabled"] = "Desativado",
    ["On"] = "Ligado",
    ["Off"] = "Desligado",
    ["General Settings"] = "Configurações gerais",
    ["Visual Settings"] = "Configurações visuais",
    ["Character Settings"] = "Configurações do personagem",
    ["Entity Settings"] = "Configurações de entidades",
    ["Item Settings"] = "Configurações de itens",
    ["Door Settings"] = "Configurações de portas",
    ["Notifications"] = "Notificações",
    ["Show Keybinds"] = "Mostrar atalhos",
    ["Open"] = "Abrir",
    ["Close"] = "Fechar",
    ["Default"] = "Padrão",
    ["Reset"] = "Restaurar padrão",
    ["Restore Defaults"] = "Restaurar padrões",
    ["Successfully loaded"] = "Carregado com sucesso",
    ["Only DOORS is supported right now, sorry :)"] = "No momento, apenas DOORS é compatível.",
    ["Copy Discord invite"] = "Copiar convite do Discord",
    ["Press"] = "Pressione",
    ["to toggle the UI."] = "para mostrar/ocultar a interface.",
    ["Died to Abysall Hub"] = "Morreu para o Abysall Hub",
    ["Remove Camera Shake"] = "Remover tremor da câmera",
    ["Remove Camera Bobbing"] = "Remover balanço da câmera",
    ["Field Of View"] = "Campo de visão",
    ["FOV"] = "Campo de visão",
    ["Speed"] = "Velocidade",
    ["Walk Speed"] = "Velocidade de caminhada",
    ["Jump Power"] = "Força do pulo",
    ["Auto Interact"] = "Interação automática",
    ["Auto Hide"] = "Esconder automaticamente",
    ["Auto Rooms"] = "Salas automáticas",
    ["Auto Solve"] = "Resolver automaticamente",
    ["Anti-AFK"] = "Anti-inatividade",
    ["Performance"] = "Desempenho",
    ["Compatibility"] = "Compatibilidade",
    ["Executor"] = "Executor",
    ["Version"] = "Versão",
    ["Unknown"] = "Desconhecido",
    ["Failed"] = "Falhou",
    ["Success"] = "Sucesso",
    ["Warning"] = "Aviso",
    ["Error"] = "Erro",
}

local Reverse = {}
for English, Portuguese in pairs(Translations) do
    if not Reverse[Portuguese] then
        Reverse[Portuguese] = English
    end
end

local OriginalText = setmetatable({}, { __mode = "k" })
local Watching = setmetatable({}, { __mode = "k" })
local Updating = setmetatable({}, { __mode = "k" })
local Language = "English"
local Connections = {}
local RootWatching = setmetatable({}, { __mode = "k" })

local function NormalizeLanguage(Value)
    if Value == "Português (Brasil)" or Value == "Portuguese" or Value == "pt-BR" or Value == "Português" then
        return "Português (Brasil)"
    end
    return "English"
end

local function Translate(Value)
    if type(Value) ~= "string" then
        return Value
    end
    if Language == "Português (Brasil)" then
        return Translations[Value] or Value
    end
    return Reverse[Value] or Value
end

local function ApplyObject(Object)
    if not Object or not Object:IsA("TextLabel") and not Object:IsA("TextButton") and not Object:IsA("TextBox") then
        return
    end

    local Success, Current = pcall(function()
        return Object.Text
    end)
    if not Success then
        return
    end

    if OriginalText[Object] == nil then
        OriginalText[Object] = Reverse[Current] or Current
    elseif not Updating[Object] and Current ~= Translate(OriginalText[Object]) then
        OriginalText[Object] = Reverse[Current] or Current
    end

    if Watching[Object] then
        return
    end
    Watching[Object] = true

    local ChangedSuccess, Signal = pcall(function()
        return Object:GetPropertyChangedSignal("Text")
    end)
    if ChangedSuccess and Signal then
        local Connection = Signal:Connect(function()
            if Updating[Object] then
                return
            end
            local TextSuccess, NewText = pcall(function()
                return Object.Text
            end)
            if not TextSuccess then
                return
            end
            OriginalText[Object] = Reverse[NewText] or NewText
            Updating[Object] = true
            pcall(function()
                Object.Text = Translate(OriginalText[Object])
            end)
            Updating[Object] = nil
        end)
        table.insert(Connections, Connection)
    end

    Updating[Object] = true
    pcall(function()
        Object.Text = Translate(OriginalText[Object])
    end)
    Updating[Object] = nil
end

local function ScanRoot(Root)
    if not Root then
        return
    end
    pcall(function()
        for _, Descendant in ipairs(Root:GetDescendants()) do
            ApplyObject(Descendant)
        end
        if Root:IsA("TextLabel") or Root:IsA("TextButton") or Root:IsA("TextBox") then
            ApplyObject(Root)
        end
    end)
    if not RootWatching[Root] then
        local Success, Connection = pcall(function()
            return Root.DescendantAdded:Connect(function(Descendant)
                task.defer(function()
                    ApplyObject(Descendant)
                end)
            end)
        end)
        if Success and Connection then
            RootWatching[Root] = true
            table.insert(Connections, Connection)
        end
    end
end

function Localization:SetLanguage(Value)
    Language = NormalizeLanguage(Value)
    local Success, CoreGui = pcall(function()
        return game:GetService("CoreGui")
    end)
    if Success then
        ScanRoot(CoreGui)
    end
    local PlayerSuccess, PlayerGui = pcall(function()
        return game:GetService("Players").LocalPlayer:FindFirstChildOfClass("PlayerGui")
    end)
    if PlayerSuccess then
        ScanRoot(PlayerGui)
    end
    return Language
end

function Localization:GetLanguage()
    return Language
end

function Localization:GetTranslations()
    return Translations
end

return Localization
