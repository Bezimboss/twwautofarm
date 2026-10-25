-- TWW Autominer + Work.ink key gate (experimental)
-- Work.ink response fields must be checked against its current documentation.
local WORKINK_LINK = "https://work.ink/36tw/tww-autominer-z1xl"
local EXPECTED_LINK_ID = "5057607"
local VERIFY_BASE = "https://work.ink/_api/v2/token/isValid/"

local function startOriginal()
-- The Wild West: minerador automatico. Abra no Real e execute.
-- Selecione um deposito no menu. F8 para parar.
-- Codigo local; sem loadstring/HttpGet ou bibliotecas externas.

local English = (function()
-- Presentation-only translation; internal action and error identifiers stay intact.
local English={}
local messages={
    ["Pronto"]="Ready",
    ["Execute este script no The Wild West."]="Run this script in The Wild West.",
    ["Aguarde o jogo carregar antes de executar."]="Wait for the game to load before running the script.",
    ["Aguarde a parada anterior terminar"]="Wait for the previous routine to stop",
    ["Mira interrompida"]="Aiming interrupted",
    ["Falha ao minerar: "]="Mining failed: ",
    ["Porta trancada; procurando outra passagem"]="Door locked; looking for another passage",
    ["Posicionado junto ao destino"]="Positioned beside the destination",
    ["O jogo recusou iniciar a coleta"]="The game refused to start pickup",
    ["Coleta interrompida pelo jogo"]="Pickup was interrupted by the game",
    ["Falha na coleta: "]="Pickup failed: ",
    ["Seleção alterada; clique Iniciar"]="Selection changed; press START",
    ["Mochila cheia sem minérios vendáveis. Libere espaço no jogo."]="Inventory full with no sellable ores. Free some space in the game.",
    ["Nenhum armazém carregado. Aproxime-se de uma cidade."]="No shop loaded. Move closer to a town.",
    ["Recalculando a saída para vender em "]="Retrying the sales route in ",
    ["Calculando saída da mina e rota de venda"]="Planning the mine exit and sales route",
    ["Recalculando uma saída da mina até um armazém acessível"]="Finding a mine exit to a reachable shop",
    ["Não foi possível chegar ao armazém"]="Could not reach the shop",
    ["Mochila cheia: indo ao armazém "]="Inventory full: travelling to shop ",
    ["Ainda há itens ocupando toda a mochila"]="Items are still filling the inventory",
    ["Venda confirmada; voltando aos minérios"]="Sale confirmed; returning to the ores",
    ["Coletando minério"]="Collecting ore",
    ["Objeto removido"]="Object removed",
    ["Personagem indisponível; entre no mapa e reinicie"]="Character unavailable; enter the map and restart",
    ["Carregando as regiões de mineração"]="Loading mining areas",
    ["Coloque uma picareta na barra rápida do jogo"]="Put a pickaxe in the game's hotbar",
    ["Selecione até dois minérios"]="Choose up to two selection slots",
    ["Picareta insuficiente para os minérios selecionados"]="Pickaxe tier is too low for the selected ores",
    ["Aguardando "]="Waiting for ",
    [" em até 3200 studs"]=" within 3200 studs",
    ["Indo ao depósito de "]="Travelling to the ore deposit: ",
    ["; procurando outro depósito"]="; looking for another deposit",
    ["Minerando "]="Mining ",
    [" restantes"]=" remaining",
    ["Golpes sem confirmação do servidor"]="Hits were not confirmed by the server",
    ["Personagem mudou; aguardando reaparecimento para continuar"]="Character changed; waiting to respawn",
    ["Aguardando o personagem se recuperar..."]="Waiting for the character to recover...",
    ["Aguardando o personagem se recuperar"]="Waiting for the character to recover",
    ["Aguardando inventário carregar"]="Waiting for the inventory to load",
    ["Aguardando uma picareta no inventário"]="Waiting for a pickaxe in the inventory",
    ["Recalculando a rota para continuar"]="Replanning the route to continue",
    ["Iniciando"]="Starting",
    ["Recuperando a rotina: "]="Recovering the routine: ",
    ["Parado por F8"]="Stopped with F8",
    ["Parado"]="Stopped",
    ["Escolha até 2 minérios e clique Iniciar"]="Choose ores and press START",
    ["Piso indisponível para voo baixo"]="No ground available for low flight",
    ["Obstáculo ao ajustar a altura do voo"]="Obstacle while adjusting flight height",
    ["Trajeto de voo inválido"]="Invalid flight route",
    ["Sem piso contínuo para voo baixo"]="No continuous ground for low flight",
    ["Obstáculo no trajeto de voo baixo"]="Obstacle along the low-flight route",
    ["Destino em outro nível; procurando acesso pelo caminho"]="Destination is on another level; looking for an access route",
    ["Personagem indisponível"]="Character unavailable",
    ["Personagem ou destino indisponível"]="Character or destination unavailable",
    ["Personagem imobilizado; voo não iniciado"]="Character immobilized; flight could not start",
    ["Personagem caído; aguardando recuperação"]="Character knocked down; waiting for recovery",
    ["Velocidade de voo inválida (1 a 80 studs/s)"]="Invalid flight speed (1 to 80 studs/s)",
    ["Personagem mudou durante o voo"]="Character changed during flight",
    ["Posição alterada; recalculando rota"]="Position changed; replanning the route",
    ["Tempo esgotado no voo"]="Flight timed out",
    ["Piso perdido; recalculando voo baixo"]="Ground lost; replanning low flight",
    ["Piso interrompido; procurando outro caminho"]="Ground interrupted; looking for another route",
    ["Voo bloqueado; posição não avançou"]="Flight blocked; no movement detected",
    ["Voo sem progresso; recalculando passagem"]="Flight made no progress; replanning the passage",
    ["Falha no voo: "]="Flight failed: ",
    ["Destino alcançado"]="Destination reached",
    ["Escada indisponível"]="Ladder unavailable",
    ["Personagem indisponível para escada"]="Character unavailable for climbing",
    ["Encerre o voo antes de usar a escada"]="Stop flying before using the ladder",
    ["Aproxime-se do acesso da escada antes de subir"]="Move closer to the ladder entrance before climbing",
    ["Geometria da escada indisponível"]="Ladder geometry unavailable",
    ["Personagem mudou durante a escada"]="Character changed while climbing",
    ["Escada removida durante o percurso"]="Ladder removed during the route",
    ["Tempo esgotado na escada; recalculando acesso"]="Climbing timed out; replanning the entrance",
    ["Acesso da escada alcançado"]="Ladder entrance reached",
    ["Não foi possível alcançar a face da escada"]="Could not reach the ladder face",
    ["Saída da escada bloqueada; recalculando acesso"]="Ladder exit blocked; replanning the entrance",
    ["Escada bloqueada; procurando outro acesso"]="Ladder blocked; looking for another entrance",
    ["Subindo a escada"]="Climbing up the ladder",
    ["Descendo a escada"]="Climbing down the ladder",
    ["Falha na escada: "]="Ladder failed: ",
    ["Global do jogo indisponível"]="Game controller unavailable",
    ["Global do jogo indisponivel"]="Game controller unavailable",
    ["Outra troca de picareta está em andamento"]="Another pickaxe swap is in progress",
    ["Aguardando personagem nascer"]="Waiting for the character to spawn",
    ["Tempo esgotado ao equipar a picareta"]="Equipping the pickaxe timed out",
    ["Nenhuma picareta disponível no inventário"]="No pickaxe available in the inventory",
    ["Nenhum espaço Utility disponível no equipamento rápido"]="No Utility slot available in the hotbar",
    ["Aguardando a melhor picareta entrar no equipamento rápido"]="Waiting for the best pickaxe to enter the hotbar",
    ["Tempo esgotado ao equipar a melhor picareta"]="Equipping the best pickaxe timed out",
    ["Aguardando o jogo liberar a troca de picareta"]="Waiting for the game to allow a pickaxe swap",
    ["Aguardando fim do golpe para trocar de picareta"]="Waiting for the swing to finish before swapping pickaxes",
    ["Falha ao equipar a picareta: "]="Could not equip the pickaxe: ",
    ["Personagem indisponível durante a mineração"]="Character unavailable while mining",
    ["Depósito removido durante a mineração"]="Deposit removed while mining",
    ["Câmera alterada durante a mineração"]="Camera changed while mining",
    ["Outro golpe ainda está em andamento"]="Another swing is still in progress",
    ["Personagem ou depósito indisponível"]="Character or deposit unavailable",
    ["Câmera indisponível para mirar o minério"]="Camera unavailable for aiming at the ore",
    ["Depósito esgotado ou indisponível"]="Deposit depleted or unavailable",
    ["Minério de prisão ignorado"]="Prison ore ignored",
    ["Picareta não equipada"]="Pickaxe not equipped",
    ["Não foi possível confirmar o nível exigido para este depósito"]="Could not confirm the deposit's required pickaxe tier",
    [" exige picareta nível "]=" requires pickaxe tier ",
    ["; sua picareta é nível "]="; your pickaxe tier is ",
    ["Aguardando fim do golpe"]="Waiting for the swing to finish",
    ["Picareta ocupada"]="Pickaxe busy",
    ["Picareta desequipada"]="Pickaxe unequipped",
    ["Contato de mineração registrado"]="Mining contact registered",
    ["A picareta tocou outro depósito"]="The pickaxe hit another deposit",
    ["Contato não aceito pelo fluxo local"]="Contact was not accepted by the game",
    ["A picareta não tocou o depósito"]="The pickaxe did not touch the deposit",
    ["Golpe não iniciado"]="Swing did not start",
    ["Calculando saída da mina e caminho até o armazém"]="Planning the mine exit and route to the shop",
    ["Carregando bordas e patamares da mina"]="Loading the mine edges and landings",
    ["Verificando rotas: "]="Checking routes: ",
    [" trechos"]=" sections",
    ["Seguindo o caminho até o destino"]="Following the route to the destination",
    ["Voando baixo até o destino"]="Flying low to the destination",
    ["Ajustando o caminho a partir da posição atual"]="Adjusting the route from the current position",
    ["Buscando passagem pelo terreno: "]="Searching the terrain: ",
    [" pontos"]=" points",
    ["Pulando para liberar o caminho"]="Jumping to get unstuck",
    ["Passando pela porta"]="Walking through the doorway",
    ["Seguindo a passagem de madeira"]="Following the wooden walkway",
    ["Tempo esgotado no caminho"]="Route timed out",
    ["Personagem mudou durante o caminho"]="Character changed during the route",
    ["Caminho bloqueado"]="Route blocked",
    ["Ponto alcançado"]="Waypoint reached",
    ["Rota bloqueada além do alcance de uma busca de caminho"]="Route blocked beyond the pathfinding range",
    ["Tempo esgotado ao calcular caminho"]="Pathfinding timed out",
    ["Falha ao calcular caminho: "]="Pathfinding failed: ",
    ["Nenhum caminho caminhável até o destino"]="No walkable route to the destination",
    ["Não foi possível criar o caminho"]="Could not create the path",
    ["Planejador de saídas indisponível"]="Exit planner unavailable",
    ["Subindo para a saída da mina"]="Climbing towards the mine exit",
    ["Descendo para a mina"]="Descending into the mine",
    ["Passagem de madeira removida"]="Wooden walkway removed",
    ["Trecho da rota indisponível"]="Route section unavailable",
    ["Destino inválido"]="Invalid destination",
    ["Perto do vendedor"]="Near the vendor",
    ["Destino além do limite de navegação ("]="Destination beyond the navigation limit (",
    ["Não há piso acessível ao redor do destino"]="No accessible ground around the destination",
    ["Destino indisponível"]="Destination unavailable",
    ["Depósito indisponível"]="Deposit unavailable",
    ["Geometria do depósito indisponível"]="Deposit geometry unavailable",
    ["Vendedor indisponível"]="Vendor unavailable",
    ["Vendedor sem ponto de interação"]="Vendor has no interaction point",
    ["Vendedor sem posição caminhável"]="Vendor has no walkable position",
    ["Nenhum acesso ao armazém está carregado no alcance"]="No loaded shop entrance within range",
    ["Recalculando uma saída da mina até o armazém"]="Replanning the mine exit and route to the shop",
    ["Carregamento antecipado indisponível"]="Region preloading unavailable",
    ["Coleta ignorada: objeto fora da pasta de minérios"]="Pickup ignored: object is outside the ore folder",
    ["Capacidade do inventário ainda indisponível"]="Inventory capacity unavailable",
    ["Inventário cheio"]="Inventory full",
    ["Minério não está mais disponível"]="Ore is no longer available",
    ["Aproxime-se e olhe para o minério para liberar a coleta"]="Move closer and look at the ore to enable pickup",
    ["Ação original de coletar minério indisponível"]="The game's ore pickup action is unavailable",
    ["Outra interação está em andamento"]="Another interaction is in progress",
    ["Tempo esgotado na interação de coleta"]="Pickup interaction timed out",
    ["Minério recebido no inventário"]="Ore received in the inventory",
    ["Coleta sem confirmação no inventário"]="Pickup was not confirmed in the inventory",
    ["Câmera indisponível para coletar"]="Camera unavailable for pickup",
    ["Reaparecendo para retomar a mineracao..."]="Respawning to resume mining...",
    ["Selecione Nascer no jogo; o farm retomara automaticamente."]="Press Spawn in the game; farming will resume automatically.",
    ["Aguardando o local de reaparecimento ficar disponivel..."]="Waiting for the respawn location to become available...",
    ["Aguardando o personagem reaparecer..."]="Waiting for the character to respawn...",
    ["Posição ou adaptador de rotas indisponível"]="Position or route adapter unavailable",
    ["Nenhum destino válido disponível"]="No valid destination available",
    ["Limite desta busca atingido; destinos restantes ainda não foram verificados"]="Search limit reached; remaining destinations have not been checked yet",
    ["Nenhuma rota confirmada entre os acessos disponíveis"]="No confirmed route between the available entrances",
    ["Camera indisponivel para o vendedor"]="Camera unavailable for the vendor",
    ["Personagem indisponivel para o vendedor"]="Character unavailable for the vendor",
    ["Vendedor indisponivel"]="Vendor unavailable",
    ["Personagem ou inventario indisponivel"]="Character or inventory unavailable",
    ["Vendedor ou personagem indisponivel"]="Vendor or character unavailable",
    ["Botao Sell All do vendedor disponivel"]="Vendor's Sell All action is available",
    ["Aproxime-se do vendedor para liberar o botao Sell All"]="Move closer to the vendor to enable Sell All",
    ["Acesse um vendedor antes de vender"]="Reach a vendor before selling",
    ["Botao Sell All indisponivel no vendedor"]="Sell All is unavailable at this vendor",
    ["Vendedor: acionando Sell All"]="Vendor: holding Sell All",
    ["Outra interacao esta em andamento"]="Another interaction is in progress",
    ["O jogo recusou iniciar Sell All"]="The game refused to start Sell All",
    ["Tempo esgotado no botao Sell All"]="Sell All timed out",
    ["Sell All interrompido pelo jogo"]="Sell All was interrupted by the game",
    ["Sell All sem confirmacao de todos os minerios no inventario"]="The sale of all ores was not confirmed in the inventory",
    ["Posição de carregamento inválida"]="Invalid loading position",
    ["Piso local disponível"]="Local ground is available",
    ["Região carregada recentemente"]="Region loaded recently",
    ["Solicitação de regiões indisponível neste cliente"]="Region loading is unavailable in this client",
    ["Tempo esgotado ao carregar região"]="Region loading timed out",
    ["Falha ao carregar região: "]="Region loading failed: ",
    ["Região carregada"]="Region loaded",
    ["Corredor inválido"]="Invalid loading corridor",
    ["Região fora do alcance de 3200 studs"]="Region outside the 3200-stud range",
    ["Limite de tempo para carregar o trajeto"]="Route loading timed out",
    ["Regiões do trajeto carregadas"]="Route regions loaded",
    ["Posição de mina inválida"]="Invalid mine position",
    ["Carregamento da saída continuará na próxima busca"]="Exit loading will continue on the next search",
    ["Bordas e patamares da mina carregados"]="Mine edges and landings loaded",
    ["Personagem indisponível para localizar minas"]="Character unavailable for locating mines",
    ["Parte das minas será carregada na próxima busca"]="The remaining mines will load on the next search",
    ["Nenhuma região de minério no alcance"]="No mining area within range",
    ["Regiões de minério carregadas"]="Mining areas loaded",
    ["Streaming desativado"]="Region streaming disabled",
    ["Posição ou voo baixo indisponível para calcular a rota"]="Position or low flight unavailable for route planning",
    ["Personagem indisponível para calcular a rota"]="Character unavailable for route planning",
    ["Não há piso acessível na saída atual da mina"]="No accessible ground at the current mine exit",
    ["Rota de voo baixo encontrada"]="Low-flight route found",
    ["Rota de voo baixo e aproximação encontrada"]="Low-flight and approach route found",
    ["Limite de busca da rota atingido; recalculando a saída da mina"]="Route search limit reached; replanning the mine exit",
    ["Limite de tempo da rota atingido; recalculando a saída da mina"]="Route search timed out; replanning the mine exit",
    ["Nenhuma passagem com piso contínuo foi encontrada até o destino"]="No passage with continuous ground was found to the destination",
    ["Cancelado"]="Cancelled",
}
local replacements={}
for original,translated in pairs(messages)do
    replacements[#replacements+1]={pattern=original:gsub("([%%%^%$%(%)%.%[%]%*%+%-%?])","%%%1"),text=translated,length=#original}
end
table.sort(replacements,function(a,b)return a.length>b.length end)
local cache,count={},0
function English.translate(value)
    local text=tostring(value or"")
    if messages[text]then return messages[text]end
    if cache[text]then return cache[text]end
    local result=text
    for _,entry in ipairs(replacements)do result=result:gsub(entry.pattern,function()return entry.text end)end
    if count>=256 then cache,count={},0 end
    cache[text]=result;count=count+1
    return result
end
return English

end)()
local Reports = (function()
-- Only a click on SEND REPORT sends the user's message and listed diagnostics.
local Reports = {}
Reports.__index = Reports
Reports.COOLDOWN_SECONDS = 12 * 60 * 60

-- A webhook in a distributed client script is visible to its recipients.
-- A public report API can be used instead to keep the webhook on a server.
Reports.CONTACT_URL = ""
Reports.ENDPOINT = "https://discord.com/api/webhooks/1563722040911986768/Cq6ce8QXHEKlN4fjA9sXvM55S_0EWyxfOtGT3RVlhUJiXo6sbljUODb8nuCTsNrqXhe9"

function Reports.create(diagnostics)
    local player=game:GetService("Players").LocalPlayer
    local userId=player and player.UserId or 0
    local environment=(getgenv and getgenv())or _G
    if type(environment.TWWReportCooldowns)~="table" then environment.TWWReportCooldowns={} end
    local self=setmetatable({diagnostics=diagnostics,userId=userId,
        cooldowns=environment.TWWReportCooldowns,cooldownUntil=0,
        cooldownFile="tww-report-cooldown-"..tostring(userId)..".json",
        HttpService=game:GetService("HttpService")},Reports)
    if type(readfile)=="function" then
        local ok,data=pcall(function()return self.HttpService:JSONDecode(readfile(self.cooldownFile))end)
        if ok and type(data)=="table" and data.userId==userId
            and type(data.sentAt)=="number" and type(data.nextAllowedAt)=="number"
            and data.nextAllowedAt-data.sentAt==Reports.COOLDOWN_SECONDS then
            self.cooldownUntil=data.nextAllowedAt
        end
    end
    return self
end

function Reports:Remaining()
    return math.max(0,math.ceil(math.max(self.cooldownUntil,self.cooldowns[self.userId]or 0)-os.time()))
end

function Reports:_RecordSuccess()
    local now=os.time()
    self.cooldownUntil=now+Reports.COOLDOWN_SECONDS
    self.cooldowns[self.userId]=self.cooldownUntil
    if type(writefile)=="function" then
        pcall(function()
            writefile(self.cooldownFile,self.HttpService:JSONEncode({userId=self.userId,
                sentAt=now,nextAllowedAt=self.cooldownUntil}))
        end)
    end
end

function Reports:Build(description)
    description=tostring(description or ""):match("^%s*(.-)%s*$")
    if #description<10 then return nil,"Describe the problem in at least 10 characters." end
    if #description>2500 then return nil,"Keep the description under 2,500 characters." end
    local ok,diagnostics=pcall(self.diagnostics)
    if not ok then diagnostics={status="Diagnostics unavailable"} end
    local report={product="Tww autominer",version="beta-ladder-recovery-2",
        createdAt=os.date("!%Y-%m-%dT%H:%M:%SZ"),description=description,diagnostics=diagnostics}
    local encoded,json=pcall(self.HttpService.JSONEncode,self.HttpService,report)
    if not encoded then return nil,"Could not prepare the report." end
    return {data=report,json=json}
end

local function clip(value,limit)
    local text=tostring(value or "Unavailable")
    if #text<=limit then return text end
    local finish=limit-3
    while finish>0 and string.byte(text,finish+1)>=128 and string.byte(text,finish+1)<192 do finish=finish-1 end
    return string.sub(text,1,finish).."..."
end

function Reports:_Delivery(report)
    local url=Reports.ENDPOINT
    local discord=url:match("^https://discord%.com/api/webhooks/%d+/")
        or url:match("^https://discord%.com/api/v%d+/webhooks/%d+/")
    if not discord then return url,report.json,false end
    local diagnostics=report.data.diagnostics
    local ores=type(diagnostics.selectedOres)=="table" and table.concat(diagnostics.selectedOres,", ") or "Unavailable"
    local route=self.HttpService:JSONEncode(diagnostics.navigation or {})
    local payload={username="Tww autominer reports",allowed_mentions={parse={}},embeds={{
        title="Tww autominer | Bug report",description=report.data.description,color=14563139,
        timestamp=report.data.createdAt,footer={text="Beta | made by: z1xl"},fields={
            {name="Status",value=clip(diagnostics.status,1000),inline=false},
            {name="Position",value=clip(diagnostics.position,128),inline=true},
            {name="Selected ores",value=ores~="" and clip(ores,128) or "None",inline=true},
            {name="Route diagnostics",value=clip(route,1000),inline=false},
        },
    }}}
    local replaced,count=url:gsub("([?&])wait=[^&]*","%1wait=true")
    url=count>0 and replaced or url..(url:find("?",1,true) and "&" or "?").."wait=true"
    return url,self.HttpService:JSONEncode(payload),true
end

function Reports:Send(description)
    if self.sending then return false,"A report is already being sent." end
    local remaining=self:Remaining()
    if remaining>0 then return false,string.format("Report cooldown: %02dh %02dm %02ds remaining.",
        math.floor(remaining/3600),math.floor(remaining%3600/60),remaining%60) end
    if Reports.ENDPOINT=="" then return false,"Delivery is not configured. Contact z1xl." end
    local report,message=self:Build(description)
    if not report then return false,message end
    local send=request or http_request or (syn and syn.request)
    if type(send)~="function" then return false,"HTTP requests are unavailable in this executor." end
    local prepared,url,body,discord=pcall(self._Delivery,self,report)
    if not prepared then return false,"Could not prepare the Discord message. Please try again." end
    self.sending=true
    local ok,response=pcall(send,{Url=url,Method="POST",
        Headers={["Content-Type"]="application/json"},Body=body})
    self.sending=false
    if not ok or type(response)~="table" or not tonumber(response.StatusCode)
        or tonumber(response.StatusCode)<200 or tonumber(response.StatusCode)>=300 then
        return false,"Delivery failed. Please try again."
    end
    if discord then
        local decoded,message=pcall(self.HttpService.JSONDecode,self.HttpService,response.Body or "")
        if not decoded or type(message)~="table" or type(message.id)~="string" then
            return false,"Discord did not confirm delivery. Please try again."
        end
    end
    self:_RecordSuccess()
    return true,"Report sent to z1xl. You can send another report in 12 hours."
end

function Reports:Contact()
    if Reports.CONTACT_URL=="" then return false,"The author has not configured a contact link yet." end
    local copy=setclipboard or toclipboard
    if type(copy)~="function" or not pcall(copy,Reports.CONTACT_URL) then return false,"Could not copy the contact link." end
    return true,"Contact link copied. Open it in your browser and paste your report."
end

return Reports

end)()
local UI = (function()
-- Interface local. Nenhuma chamada de mineração, venda ou rede é feita aqui.
local UI = {}

function UI.create(options)
    options = options or {}
    local oreLabels=options.oreLabels or{}
    local oreWeights=options.oreWeights or{Limestone=2,Copper=1,Coal=1}
    local translate=options.translateStatus or tostring
    local maxSelectedOres=2
    local function selectionSlots(ores)
        local total=0
        for _,name in ipairs(ores)do total=total+(oreWeights[name]or 1)end
        return total
    end
    local Players = game:GetService("Players")
    local UserInputService = game:GetService("UserInputService")
    local player = Players.LocalPlayer
    assert(player, "Run this interface in the Roblox client.")
    local playerGui = player:WaitForChild("PlayerGui")
    local connections = {}
    local rowConnections = {}
    local rows = {}
    local selected = {}
    local selectionInitialized = false
    local selectionFeedbackGeneration = 0
    local running = false
    local destroyed = false
    local dragging = false
    local dragInput = nil
    local dragStart = nil
    local startPosition = nil
    local sliderDragging = false
    local sliderInput = nil
    local initialSpeed = tonumber(options.flightSpeed) or 18
    if initialSpeed ~= initialSpeed or math.abs(initialSpeed) == math.huge then initialSpeed = 18 end
    local flightSpeed = math.clamp(math.floor(initialSpeed + 0.5), 1, 80)

    local colors = {
        background = Color3.fromRGB(14, 14, 14),
        panel = Color3.fromRGB(19, 19, 19),
        row = Color3.fromRGB(25, 25, 25),
        selected = Color3.fromRGB(48, 24, 27),
        line = Color3.fromRGB(50, 50, 50),
        text = Color3.fromRGB(223, 223, 223),
        muted = Color3.fromRGB(143, 143, 143),
        accent = Color3.fromRGB(222, 55, 67),
        stop = Color3.fromRGB(152, 35, 44),
    }

    local function create(className, properties, parent)
        local instance = Instance.new(className)
        for key, value in pairs(properties) do
            instance[key] = value
        end
        instance.Parent = parent
        return instance
    end

    local function outline(instance, color)
        create("UIStroke", {Color=color or colors.line,Thickness=1},instance)
    end

    local function connect(signal, callback, list)
        local connection = signal:Connect(callback)
        table.insert(list or connections, connection)
        return connection
    end

    local function disconnectAll(list)
        for _, connection in ipairs(list) do
            connection:Disconnect()
        end
        for index = #list, 1, -1 do
            list[index] = nil
        end
    end

    local screen = create("ScreenGui", {
        Name = "WildWestMinerGui",
        ResetOnSpawn = false,
        ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
        DisplayOrder = 30,
    }, playerGui)

    local window = create("Frame", {
        Name = "Window",
        AnchorPoint = Vector2.new(0.5, 0.5),
        Position = UDim2.new(0.5, 0, 0.5, 0),
        Size = UDim2.new(0, 480, 0, 480),
        BackgroundColor3 = colors.background,
        BorderSizePixel = 0,
        Active = true,
    }, screen)
    outline(window,Color3.fromRGB(0,0,0))
    local inset=create("Frame",{Name="InnerBorder",Position=UDim2.new(0,4,0,4),
        Size=UDim2.new(1,-8,1,-8),BackgroundTransparency=1,BorderSizePixel=0},window)
    outline(inset,colors.line)
    create("Frame",{Name="AccentLine",Position=UDim2.new(0,6,0,6),Size=UDim2.new(1,-12,0,2),
        BackgroundColor3=colors.accent,BorderSizePixel=0},window)
    local mainPage=create("Frame",{Name="MainPage",Size=UDim2.new(1,0,1,0),
        BackgroundTransparency=1,BorderSizePixel=0},window)
    for _,area in ipairs({{name="StatusPanel",y=68,height=74},{name="MovementPanel",y=315,height=70}})do
        local panel=create("Frame",{Name=area.name,Position=UDim2.new(0,14,0,area.y),
            Size=UDim2.new(1,-28,0,area.height),BackgroundColor3=colors.panel,BorderSizePixel=0},mainPage)
        outline(panel)
    end

    local dragHandle = create("Frame", {
        Name = "DragHandle",
        Size = UDim2.new(1, -48, 0, 40),
        BackgroundTransparency = 1,
        Active = true,
    }, window)

    local function label(name, text, position, size, textSize, color, parent)
        return create("TextLabel", {
            Name = name,
            Text = text,
            Position = position,
            Size = size,
            Font = Enum.Font.Code,
            TextSize = textSize,
            TextColor3 = color or colors.text,
            TextXAlignment = Enum.TextXAlignment.Left,
            BackgroundTransparency = 1,
            BorderSizePixel = 0,
        }, parent or mainPage)
    end

    label("Title", "Tww autominer", UDim2.new(0, 20, 0, 18),
        UDim2.new(1, -24, 0, 22), 16, colors.text, dragHandle)

    local closeButton = create("TextButton", {
        Name = "Close",
        Text = "x",
        Font = Enum.Font.Code,
        TextSize = 16,
        TextColor3 = colors.muted,
        Position = UDim2.new(1, -38, 0, 15),
        Size = UDim2.new(0, 26, 0, 28),
        BackgroundTransparency = 1,
        BorderSizePixel = 0,
    }, window)

    local function tabButton(name,text,x)
        local button=create("TextButton",{Name=name,Text=text,Position=UDim2.new(0,x,0,43),
            Size=UDim2.new(0,220,0,20),Font=Enum.Font.Code,TextSize=11,
            TextColor3=colors.text,BackgroundColor3=colors.row,BorderSizePixel=0},window)
        outline(button)
        return button
    end
    local mainTab=tabButton("MainTab","AUTOMINER",14)
    local reportTab=tabButton("ReportTab","REPORT A BUG",246)
    local reportPage=create("Frame",{Name="ReportPage",Size=UDim2.new(1,0,1,0),
        BackgroundTransparency=1,BorderSizePixel=0,Visible=false},window)
    label("ReportHeading","REPORT A BUG",UDim2.new(0,22,0,80),UDim2.new(1,-44,0,20),14,colors.text,reportPage)
    label("ReportHint","Describe what happened and where you were.",UDim2.new(0,22,0,108),
        UDim2.new(1,-44,0,16),11,colors.muted,reportPage)
    local reportText=create("TextBox",{Name="ReportDescription",Text="",PlaceholderText="What went wrong?",
        MultiLine=true,ClearTextOnFocus=false,TextWrapped=true,TextXAlignment=Enum.TextXAlignment.Left,
        TextYAlignment=Enum.TextYAlignment.Top,Font=Enum.Font.Code,TextSize=12,
        TextColor3=colors.text,PlaceholderColor3=colors.muted,BackgroundColor3=colors.panel,
        BorderSizePixel=0,Position=UDim2.new(0,14,0,136),Size=UDim2.new(1,-28,0,161)},reportPage)
    outline(reportText)
    create("UIPadding",{PaddingTop=UDim.new(0,8),PaddingBottom=UDim.new(0,8),
        PaddingLeft=UDim.new(0,8),PaddingRight=UDim.new(0,8)},reportText)
    label("ReportDiagnosticsHint","Includes status, position and route diagnostics.",UDim2.new(0,22,0,307),
        UDim2.new(1,-44,0,16),10,colors.muted,reportPage)
    local function reportButton(name,text,x,y,width)
        local button=create("TextButton",{Name=name,Text=text,Position=UDim2.new(0,x,0,y),
            Size=UDim2.new(0,width,0,28),Font=Enum.Font.Code,TextSize=11,TextColor3=colors.text,
            BackgroundColor3=colors.row,BorderSizePixel=0},reportPage)
        outline(button)
        return button
    end
    local reportCooldown=label("ReportCooldown","One report every 12 hours.",UDim2.new(0,22,0,325),
        UDim2.new(1,-44,0,12),10,colors.muted,reportPage)
    local sendReport=reportButton("SendReport","SEND REPORT",14,340,452)
    local contactReport=reportButton("ReportContact","CONTACT Z1XL",14,379,452)
    local canSend=type(options.reportEndpoint)=="string" and options.reportEndpoint~=""
    local canContact=type(options.reportContact)=="string" and options.reportContact~=""
    sendReport.Active=canSend;sendReport.AutoButtonColor=canSend
    sendReport.TextColor3=canSend and colors.text or colors.muted
    sendReport.BackgroundColor3=canSend and colors.accent or colors.row
    contactReport.Active=canContact;contactReport.AutoButtonColor=canContact
    contactReport.TextColor3=canContact and colors.text or colors.muted
    contactReport.Visible=canContact
    local reportStatus=label("ReportStatus",canSend and "Reports are sent only when you press SEND REPORT."
        or "Delivery is not configured. Contact z1xl.",
        UDim2.new(0,22,0,418),UDim2.new(1,-44,0,32),11,colors.muted,reportPage)
    reportStatus.TextWrapped=true;reportStatus.TextYAlignment=Enum.TextYAlignment.Top
    if not canContact then
        reportStatus.Position=UDim2.new(0,22,0,381)
        reportStatus.Size=UDim2.new(1,-44,0,65)
    end

    local inventory = label("Inventory", "Inventory: waiting for data",
        UDim2.new(0, 26, 0, 79), UDim2.new(1, -52, 0, 18), 12, colors.muted)
    local status = label("Status", "Status: ready",
        UDim2.new(0, 26, 0, 102), UDim2.new(1, -52, 0, 32), 12)
    status.TextWrapped = true
    status.TextYAlignment = Enum.TextYAlignment.Top

    local oreHeading = label("OreHeading", "ORE SELECTION [0/"..maxSelectedOres.."]", UDim2.new(0, 22, 0, 154),
        UDim2.new(0, 300, 0, 17), 12, colors.muted)
    local refreshButton = create("TextButton", {
        Name = "RefreshOres",
        Text = "REFRESH",
        Font = Enum.Font.Code,
        TextSize = 11,
        TextColor3 = colors.text,
        Position = UDim2.new(1, -110, 0, 151),
        Size = UDim2.new(0, 96, 0, 22),
        BackgroundColor3 = colors.row,
        BorderSizePixel = 0,
        AutoButtonColor = true,
    }, mainPage)
    outline(refreshButton)

    local list = create("ScrollingFrame", {
        Name = "Ores",
        Position = UDim2.new(0, 14, 0, 179),
        Size = UDim2.new(1, -28, 0, 104),
        BackgroundColor3 = colors.panel,
        BorderSizePixel = 0,
        ScrollBarThickness = 3,
        ScrollBarImageColor3 = colors.muted,
        CanvasSize = UDim2.new(0, 0, 0, 0),
        ScrollingDirection = Enum.ScrollingDirection.Y,
        AutomaticCanvasSize = Enum.AutomaticSize.Y,
    }, mainPage)
    outline(list)
    create("UIPadding", {
        PaddingTop = UDim.new(0, 6), PaddingBottom = UDim.new(0, 6),
        PaddingLeft = UDim.new(0, 6), PaddingRight = UDim.new(0, 6),
    }, list)
    create("UIListLayout", {
        Padding = UDim.new(0, 4), SortOrder = Enum.SortOrder.LayoutOrder,
    }, list)
    local emptyLabel = label("Empty", "No ores available.\nPress REFRESH.",
        UDim2.new(), UDim2.new(1, 0, 0, 100), 12, colors.muted, list)
    emptyLabel.TextWrapped = true
    emptyLabel.TextXAlignment = Enum.TextXAlignment.Center

    label("SelectionHint","Limestone uses both selection slots.",UDim2.new(0,22,0,291),UDim2.new(1,-44,0,14),10,colors.muted)
    label("FlightSpeedHeading", "FLIGHT SPEED", UDim2.new(0, 26, 0, 322),
        UDim2.new(1, -36, 0, 17), 11, colors.muted)
    local speedSlider = create("TextButton", {
        Name = "FlightSpeedSlider", Text = "", AutoButtonColor = false,
        Position = UDim2.new(0, 26, 0, 343), Size = UDim2.new(1, -132, 0, 26),
        BackgroundTransparency = 1, BorderSizePixel = 0,
    }, mainPage)
    local sliderTrack = create("Frame", {
        Name = "Track", Position = UDim2.new(0, 0, 0.5, -3),
        Size = UDim2.new(1, 0, 0, 6), BackgroundColor3 = colors.line, BorderSizePixel = 0,
        Active = true,
    }, speedSlider)
    outline(sliderTrack,Color3.fromRGB(8,8,8))
    local sliderFill = create("Frame", {
        Name = "Fill", Size = UDim2.new(0, 0, 1, 0),
        BackgroundColor3 = colors.accent, BorderSizePixel = 0,
        Active = true,
    }, sliderTrack)
    local sliderKnob = create("Frame", {
        Name = "Knob", Position = UDim2.new(0, -7, 0.5, -7),
        Size = UDim2.new(0, 14, 0, 14), BackgroundColor3 = colors.text, BorderSizePixel = 0,
        Active = true,
    }, sliderTrack)
    outline(sliderKnob,Color3.fromRGB(8,8,8))
    local speedInput = create("TextBox", {
        Name = "FlightSpeed", Text = tostring(flightSpeed), ClearTextOnFocus = false,
        Font = Enum.Font.Code, TextSize = 13, TextColor3 = colors.text,
        Position = UDim2.new(1, -90, 0, 341), Size = UDim2.new(0, 64, 0, 27),
        BackgroundColor3 = colors.panel, BorderSizePixel = 0,
    }, mainPage)
    outline(speedInput)
    label("FlightSpeedHint", "1-80 studs/s | adjustable while moving", UDim2.new(0, 26, 0, 372),
        UDim2.new(1, -52, 0, 12), 10, colors.muted)

    local toggleButton = create("TextButton", {
        Name = "Toggle",
        Text = "START",
        Font = Enum.Font.Code,
        TextSize = 14,
        TextColor3 = colors.text,
        Position = UDim2.new(0, 14, 0, 423),
        Size = UDim2.new(1, -28, 0, 28),
        BackgroundColor3 = colors.accent,
        BorderSizePixel = 0,
        AutoButtonColor = true,
    }, mainPage)
    outline(toggleButton,Color3.fromRGB(8,8,8))
    label("AuthorCredit", "made by: z1xl", UDim2.new(0, 20, 0, 460),
        UDim2.new(0, 220, 0, 12), 10, colors.muted,window)
    local betaBadge=label("BetaBadge", "BETA", UDim2.new(0, 240, 0, 460),
        UDim2.new(1, -260, 0, 12), 10, colors.accent,window)
    betaBadge.TextXAlignment=Enum.TextXAlignment.Right

    local instance = {}
    local reportBusy=false
    local reportRemaining=0
    local function updateReportCooldown()
        if destroyed then return end
        if type(options.onReportCooldown)=="function" then
            local ok,value=pcall(options.onReportCooldown)
            if ok and type(value)=="number" and value==value then reportRemaining=math.max(0,math.ceil(value)) end
        end
        local enabled=canSend and reportRemaining==0 and not reportBusy
        sendReport.Active=enabled;sendReport.AutoButtonColor=enabled
        sendReport.BackgroundColor3=enabled and colors.accent or colors.row
        sendReport.TextColor3=enabled and colors.text or colors.muted
        reportCooldown.Text=reportRemaining>0 and string.format("Next report in %02dh %02dm %02ds",
            math.floor(reportRemaining/3600),math.floor(reportRemaining%3600/60),reportRemaining%60)
            or "One report every 12 hours."
    end
    local function showTab(report)
        if destroyed then return end
        sliderDragging=false;sliderInput=nil;dragging=false;dragInput=nil
        mainPage.Visible=not report;reportPage.Visible=report
        mainTab.TextColor3=not report and colors.accent or colors.muted
        reportTab.TextColor3=report and colors.accent or colors.muted
        mainTab.BackgroundColor3=not report and colors.selected or colors.row
        reportTab.BackgroundColor3=report and colors.selected or colors.row
    end
    connect(mainTab.Activated,function()showTab(false)end)
    connect(reportTab.Activated,function()showTab(true)end)
    local function submitReport(callback)
        if destroyed or reportBusy then return end
        updateReportCooldown()
        if reportRemaining>0 then return end
        if type(callback)~="function" then reportStatus.Text="Reporting is unavailable.";return end
        reportBusy=true
        updateReportCooldown()
        reportStatus.Text="Preparing report..."
        local description=reportText.Text
        task.spawn(function()
            local ok,success,message=pcall(callback,description)
            reportBusy=false
            if destroyed then return end
            updateReportCooldown()
            reportStatus.Text=ok and tostring(message or (success and "Done." or "Report failed.")) or "Report failed. Please try again."
            reportStatus.TextColor3=ok and success and colors.muted or colors.accent
        end)
    end
    connect(sendReport.Activated,function()if canSend then submitReport(options.onSendReport)end end)
    connect(contactReport.Activated,function()if canContact then submitReport(options.onReportContact)end end)
    showTab(false)
    task.spawn(function()
        while not destroyed do updateReportCooldown();task.wait(1)end
    end)

    local function invoke(callback, ...)
        if type(callback) ~= "function" then
            return
        end
        local ok, err = pcall(callback, ...)
        if not ok and not destroyed then
            status.Text = "Status: action failed; check the console."
            warn("[Wild West Miner UI] " .. tostring(err))
        end
    end

    local function redrawSelection()
        local selectedNames = {}
        for _, name in ipairs(selected) do selectedNames[name] = true end
        for name, row in pairs(rows) do
            local isSelected = selectedNames[name] == true
            row.BackgroundColor3 = isSelected and colors.selected or colors.row
            row.TextColor3 = isSelected and colors.accent or colors.text
            row.Text = (isSelected and "[x] " or "[ ] ") .. (oreLabels[name]or name)..((oreWeights[name]or 1)==2 and"  (2 slots)"or"")
        end
        oreHeading.Text = "ORE SELECTION [" .. selectionSlots(selected) .. "/"..maxSelectedOres.."]"
        oreHeading.TextColor3 = colors.muted
        toggleButton.Active = running or #selected > 0
        toggleButton.AutoButtonColor = toggleButton.Active
        toggleButton.BackgroundColor3 = running and colors.stop
            or (#selected > 0 and colors.accent or colors.line)
        toggleButton.TextColor3 = (running or #selected > 0) and colors.text or colors.muted
    end

    local function sameSelection(first, second)
        if #first ~= #second then return false end
        for index, name in ipairs(first) do
            if second[index] ~= name then return false end
        end
        return true
    end

    function instance:SetSelectedOres(ores)
        if destroyed then return end
        local names, seen, slots = {}, {}, 0
        for _, name in ipairs(type(ores) == "table" and ores or {}) do
            if type(name) == "string" and rows[name] and not seen[name] and slots+(oreWeights[name]or 1)<=maxSelectedOres then
                seen[name] = true
                table.insert(names, name)
                slots=slots+(oreWeights[name]or 1)
            end
        end
        selected = names
        selectionInitialized = true
        selectionFeedbackGeneration = selectionFeedbackGeneration + 1
        redrawSelection()
    end

    function instance:SetOres(ores)
        if destroyed then return end
        local previous = selected
        disconnectAll(rowConnections)
        for _, row in pairs(rows) do
            row:Destroy()
        end
        rows = {}
        local names = {}
        local seen = {}
        for _, name in ipairs(type(ores) == "table" and ores or {}) do
            if type(name) == "string" and name ~= "" and not seen[name] then
                seen[name] = true
                table.insert(names, name)
            end
        end
        selected = {}
        for _, name in ipairs(previous) do
            if seen[name] then table.insert(selected, name) end
        end
        if not selectionInitialized and #names > 0 then
            selected = { names[1] }
            selectionInitialized = true
        end
        emptyLabel.Visible = #names == 0
        for index, name in ipairs(names) do
            local row = create("TextButton", {
                Name = "OreOption",
                LayoutOrder = index,
                Size = UDim2.new(1, -3, 0, 26),
                Font = Enum.Font.Code,
                TextSize = 12,
                TextXAlignment = Enum.TextXAlignment.Left,
                BackgroundColor3 = colors.row,
                BorderSizePixel = 0,
                AutoButtonColor = true,
                Text = oreLabels[name]or name,
                TextColor3 = colors.text,
            }, list)
            create("UIPadding", { PaddingLeft = UDim.new(0, 9) }, row)
            rows[name] = row
            connect(row.Activated, function()
                if destroyed then return end
                local selectedIndex = table.find(selected, name)
                if selectedIndex then
                    table.remove(selected, selectedIndex)
                elseif selectionSlots(selected)+(oreWeights[name]or 1)<=maxSelectedOres then
                    table.insert(selected, name)
                else
                    selectionFeedbackGeneration = selectionFeedbackGeneration + 1
                    local feedbackGeneration = selectionFeedbackGeneration
                    oreHeading.Text = "SELECTION LIMIT: "..maxSelectedOres.." SLOTS"
                    oreHeading.TextColor3 = colors.stop
                    task.delay(1.5, function()
                        if not destroyed and selectionFeedbackGeneration == feedbackGeneration then
                            redrawSelection()
                        end
                    end)
                    return
                end
                selectionInitialized = true
                selectionFeedbackGeneration = selectionFeedbackGeneration + 1
                redrawSelection()
                invoke(options.onSelect, table.clone(selected))
            end, rowConnections)
        end
        redrawSelection()
        if not sameSelection(previous, selected) then
            invoke(options.onSelect, table.clone(selected))
        end
    end

    function instance:SetRunning(enabled)
        if destroyed then return end
        running = enabled == true
        toggleButton.Text = running and "STOP" or "START"
        redrawSelection()
    end

    function instance:SetStatus(text)
        if not destroyed then
            status.Text = "Status: " .. translate(tostring(text or ""))
        end
    end

    function instance:SetInventory(text)
        if not destroyed then
            inventory.Text = "Inventory: " .. translate(tostring(text or ""))
        end
    end

    function instance:SetFlightSpeed(value)
        if destroyed then return end
        local number = tonumber(value)
        if not number or number ~= number or math.abs(number) == math.huge then return end
        flightSpeed = math.clamp(math.floor(number + 0.5), 1, 80)
        speedInput.Text = tostring(flightSpeed)
        local ratio = (flightSpeed - 1) / 79
        sliderFill.Size = UDim2.new(ratio, 0, 1, 0)
        sliderKnob.Position = UDim2.new(ratio, -7, 0.5, -7)
    end

    local function changeFlightSpeed(value)
        local number = tonumber(value)
        if not number or number ~= number or math.abs(number) == math.huge then
            speedInput.Text = tostring(flightSpeed)
            return
        end
        number = math.clamp(math.floor(number + 0.5), 1, 80)
        local changed = number ~= flightSpeed
        instance:SetFlightSpeed(number)
        if changed then invoke(options.onFlightSpeed, number) end
    end

    local function updateSlider(position)
        local width = speedSlider.AbsoluteSize.X
        if width <= 0 then return end
        local ratio = math.clamp((position.X - speedSlider.AbsolutePosition.X) / width, 0, 1)
        changeFlightSpeed(1 + ratio * 79)
    end

    function instance:Destroy()
        if destroyed then return end
        destroyed = true
        dragging = false
        dragInput = nil
        sliderDragging = false
        sliderInput = nil
        selectionFeedbackGeneration = selectionFeedbackGeneration + 1
        disconnectAll(rowConnections)
        disconnectAll(connections)
        rows = {}
        screen:Destroy()
    end

    connect(toggleButton.Activated, function()
        if destroyed or (not running and #selected == 0) then return end
        instance:SetRunning(not running)
        invoke(options.onToggle, running)
    end)
    connect(refreshButton.Activated, function()
        if not destroyed then invoke(options.onRefresh) end
    end)
    local function beginSliderDrag(input)
        if destroyed or dragging or sliderDragging then return end
        if input.UserInputType == Enum.UserInputType.MouseButton1
            or input.UserInputType == Enum.UserInputType.Touch then
            sliderDragging = true
            sliderInput = input.UserInputType == Enum.UserInputType.Touch and input or nil
            updateSlider(input.Position)
        end
    end
    -- GuiObject input does not bubble consistently through the decorative
    -- children. Each visible hit surface starts the same guarded gesture.
    for _, surface in ipairs({speedSlider, sliderTrack, sliderFill, sliderKnob}) do
        connect(surface.InputBegan, beginSliderDrag)
    end
    connect(speedInput.FocusLost, function() changeFlightSpeed(speedInput.Text) end)
    connect(closeButton.Activated, function()
        if destroyed then return end
        invoke(options.onClose)
        instance:Destroy()
    end)
    connect(dragHandle.InputBegan, function(input)
        if destroyed or dragging or sliderDragging then return end
        if input.UserInputType == Enum.UserInputType.MouseButton1
            or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPosition = window.Position
            dragInput = input.UserInputType == Enum.UserInputType.Touch and input or nil
        end
    end)
    connect(UserInputService.InputChanged, function(input)
        if destroyed then return end
        local isMouse = input.UserInputType == Enum.UserInputType.MouseMovement
        if sliderDragging and ((sliderInput == nil and isMouse) or input == sliderInput) then
            updateSlider(input.Position)
        elseif dragging and ((dragInput == nil and isMouse) or input == dragInput) then
            local delta = input.Position - dragStart
            window.Position = UDim2.new(startPosition.X.Scale, startPosition.X.Offset + delta.X,
                startPosition.Y.Scale, startPosition.Y.Offset + delta.Y)
        end
    end)
    connect(UserInputService.InputEnded, function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input == sliderInput then
            sliderDragging = false
            sliderInput = nil
        end
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input == dragInput then
            dragging = false
            dragInput = nil
        end
    end)
    connect(UserInputService.WindowFocusReleased, function()
        dragging = false
        dragInput = nil
        sliderDragging = false
        sliderInput = nil
    end)

    instance:SetOres(options.ores or {})
    instance:SetFlightSpeed(flightSpeed)
    instance:SetRunning(false)
    return instance
end

return UI

end)()
local Mining = (function()
-- Adaptador das classes observadas na sessão de The Wild West.
-- Usa EquipItem, Swing e OnMeleeHit; não altera cooldowns nem cria remotes.
local Mining = {}
Mining.__index = Mining
-- Area confirmada neste mapa. Serve apenas para solicitar os objetos da
-- pedreira quando seus modelos ainda nao foram replicados para o cliente.
local VERIFIED_SEARCH_AREAS = {
    {name="Desert Quarry",position=Vector3.new(-225.33,-98.9,1711.13)},
}

function Mining.create(Global)
    assert(type(Global) == "table", "Global do jogo indisponível")
    return setmetatable({
        Global = Global,
        CollectionService = game:GetService("CollectionService"),
        Workspace = game:GetService("Workspace"),
        RunService = game:GetService("RunService"),
        generation = 0,
        equipGuard = nil,
        stopGuards = setmetatable({}, { __mode = "k" }),
    }, Mining)
end

function Mining:IsPickaxe(itemData)
    local info = itemData and self.Global.SharedData.PlayerItems[itemData.Type]
    return info and info.Type == "Pickaxe" or false
end

function Mining:FindPickaxe()
    local character = self.Global.PlayerCharacter
    local current = character and character:GetEquippedItemData()
    local inventory = self.Global.PlayerData:GetContainer("Inventory")
    local choices = {}
    local seen = {}
    for _, data in pairs(inventory and inventory.Items or {}) do
        if data.Id and not seen[data.Id] and self:IsPickaxe(data) then
            table.insert(choices, data)
            seen[data.Id] = true
        end
    end
    table.sort(choices, function(a, b)
        local aTier = tonumber(self.Global.SharedData.PlayerItems[a.Type].PickaxeTier) or 0
        local bTier = tonumber(self.Global.SharedData.PlayerItems[b.Type].PickaxeTier) or 0
        if aTier ~= bTier then return aTier > bTier end
        if current and a.Id ~= b.Id and (a.Id == current.Id or b.Id == current.Id) then
            return a.Id == current.Id
        end
        if a.Type ~= b.Type then return tostring(a.Type) < tostring(b.Type) end
        return tostring(a.Id) < tostring(b.Id)
    end)
    return choices[1]
end

function Mining:_Cancelled(generation, cancelled)
    return self.generation ~= generation or (cancelled and cancelled()) or false
end

function Mining:_PickaxeLoadoutSlot(data)
    local loadout = self.Global.PlayerData:GetLoadout()
    local utility = loadout and loadout.Utility
    if type(utility) ~= "table" then return nil end
    local empty, inferior, inferiorTier, last
    local bestTier = tonumber(self.Global.SharedData.PlayerItems[data.Type].PickaxeTier) or 0
    for index, entry in pairs(utility) do
        if type(index) == "number" and index >= 1 and index % 1 == 0 then
            if not last or index > last then last = index end
            if not entry then
                if not empty or index < empty then empty = index end
            elseif self:IsPickaxe(entry) then
                local tier = tonumber(self.Global.SharedData.PlayerItems[entry.Type].PickaxeTier) or 0
                if tier < bestTier and (not inferior or tier < inferiorTier
                    or (tier == inferiorTier and index < inferior)) then
                    inferior, inferiorTier = index, tier
                end
            end
        end
    end
    return empty or inferior or last
end

-- O loadout aceita tabelas de item e aplica uma alteração local enquanto a
-- chamada normal ModifyLoadout é confirmada. A troca pode ficar bloqueada por
-- alguns frames; aguarda essa confirmação sem forçar equip nem interromper Swing.
function Mining:EquipPickaxe(timeout, cancelled)
    local duration = tonumber(timeout) or 8
    if duration ~= duration or duration == math.huge or duration == -math.huge then duration = 8 end
    local deadline, generation = os.clock() + math.max(0, duration), self.generation
    while self.equipGuard do
        if self:_Cancelled(generation, cancelled) then return nil, "Cancelado" end
        if os.clock() >= deadline then return nil, "Outra troca de picareta está em andamento" end
        task.wait(0.05)
    end
    local guard = {}
    self.equipGuard = guard
    local ok, item, data = pcall(function()
        local character = self.Global.PlayerCharacter
        local model, root = character and character.Character, character and character.RootPart
        local function available()
            local human = character and character.Human
            return self.Global.PlayerCharacter == character and model and model.Parent
                and character.Character == model and root and root.Parent
                and character.RootPart == root and human and human.Parent and human.Health > 0
        end
        if not available() then return nil, "Aguardando personagem nascer" end
        local lastRequest, lastLoadoutRequest = -math.huge, -math.huge
        local loadoutAttempts, lastId, reason = 0, nil, "Tempo esgotado ao equipar a picareta"
        repeat
            if self:_Cancelled(generation, cancelled) then return nil, "Cancelado" end
            if not available() then return nil, "Aguardando personagem nascer" end
            local best = self:FindPickaxe()
            if not best then return nil, "Nenhuma picareta disponível no inventário" end
            if best.Id ~= lastId then
                lastId, loadoutAttempts, lastRequest, lastLoadoutRequest = best.Id, 0, -math.huge, -math.huge
            end
            local current, equipped = character:GetEquippedItemData(), character:GetEquippedItem()
            -- CanSwitchToItem também testa controle do personagem. Isso não
            -- invalida a picareta que já está equipada durante voo ou queda.
            if current and current.Id == best.Id and not character.IsSwitchingItems
                and equipped and equipped.IsEquipped and equipped.Hitbox then
                return equipped, best
            end
            local busy = self.activeItem ~= nil or self.faceGuard ~= nil
                or (equipped and (equipped.Swinging or equipped.IsUnequipping or equipped.UnequipBlocked))
            if not busy and equipped and equipped.HasTrack and equipped.IsTrackPlaying then
                busy = equipped:HasTrack("ReadySwing") and equipped:IsTrackPlaying("ReadySwing")
            end
            if not busy and not character.IsSwitchingItems then
                if not self.Global.PlayerData:LoadoutContains(best.Id) then
                    local slot = self:_PickaxeLoadoutSlot(best)
                    if not slot then return nil, "Nenhum espaço Utility disponível no equipamento rápido" end
                    if loadoutAttempts < 2 and os.clock() - lastLoadoutRequest >= 0.75 then
                        -- Revalida a posse imediatamente antes da alteração.
                        local latest = self:FindPickaxe()
                        if latest and latest.Id == best.Id then
                            self.Global.PlayerData:SetLoadout("Utility", slot, best)
                            lastLoadoutRequest = os.clock()
                            loadoutAttempts = loadoutAttempts + 1
                        end
                    end
                    reason = "Aguardando a melhor picareta entrar no equipamento rápido"
                elseif os.clock() - lastRequest >= 0.5 and character:CanSwitchToItem(best, true) then
                    character:EquipItem(best)
                    lastRequest = os.clock()
                    reason = "Tempo esgotado ao equipar a melhor picareta"
                else
                    reason = "Aguardando o jogo liberar a troca de picareta"
                end
            elseif busy then
                reason = "Aguardando fim do golpe para trocar de picareta"
            end
            if os.clock() >= deadline then break end
            task.wait(0.05)
        until false
        return nil, reason
    end)
    if self.equipGuard == guard then self.equipGuard = nil end
    if not ok then return nil, "Falha ao equipar a picareta: " .. tostring(item) end
    return item, data
end

function Mining:GetDepositState(deposit)
    if not deposit or not deposit.Parent or not deposit:IsA("Model") then
        return nil
    end
    local name = nil
    for tag in pairs(self.Global.SharedData.OreDepositInfo) do
        if deposit:HasTag(tag) then
            name = tag
            break
        end
    end
    local values = deposit:FindFirstChild("DepositInfo")
    local remaining = values and values:FindFirstChild("OreRemaining")
    if not name or not remaining or not deposit.PrimaryPart then
        return nil
    end
    local progress = values:FindFirstChild("Progress")
    local maxHealth = values:FindFirstChild("MaxHealth")
    return {
        model = deposit,
        name = name,
        info = self.Global.SharedData.OreDepositInfo[name],
        primaryPart = deposit.PrimaryPart,
        remaining = remaining.Value,
        progress = progress and progress.Value,
        maxHealth = maxHealth and maxHealth.Value,
    }
end

function Mining:GetDeposits(oreName)
    local deposits = {}
    local seen = {}
    for tag, info in pairs(self.Global.SharedData.OreDepositInfo) do
        -- Sem filtro, enumera todos os tipos registrados pelo próprio jogo.
        -- Não limita a busca à mina ou ao raio do personagem.
        if oreName == nil or tag == oreName or info.OreName == oreName then
            for _, deposit in ipairs(self.CollectionService:GetTagged(tag)) do
                if not seen[deposit] and deposit:IsDescendantOf(self.Workspace)
                    and not deposit:HasTag("JailOre") then
                    local state = self:GetDepositState(deposit)
                    if state and state.remaining > 0 then
                        seen[deposit] = true
                        table.insert(deposits, deposit)
                    end
                end
            end
        end
    end
    local character = self.Global.PlayerCharacter
    local root = character and character.RootPart
    if root then
        table.sort(deposits, function(a, b)
            return (a.PrimaryPart.Position - root.Position).Magnitude
                < (b.PrimaryPart.Position - root.Position).Magnitude
        end)
    end
    return deposits
end

-- Fotografia dos depósitos que o servidor já replicou para este cliente.
-- Lê tags e DepositInfo novamente a cada consulta para refletir esgotamento,
-- respawn e streaming, sem conservar modelos antigos como destinos válidos.
function Mining:GetDepositMap(oreName)
    local map = {}
    local character = self.Global.PlayerCharacter
    local root = character and character.RootPart
    for _, deposit in ipairs(self:GetDeposits(oreName)) do
        local state = self:GetDepositState(deposit)
        if state and state.remaining > 0 then
            local position = state.primaryPart.Position
            table.insert(map, {
                model = deposit,
                name = state.name,
                oreName = state.info.OreName,
                position = position,
                remaining = state.remaining,
                requiredTier = tonumber(state.info.NeedsTier) or 0,
                distance = root and (position - root.Position).Magnitude or nil,
            })
        end
    end
    return map
end

function Mining:GetSearchAreas()
    -- Combina as zonas compartilhadas com o ponto verificado da pedreira,
    -- que nao aparece nas caixas de bioma/caverna desta versao do mapa.
    local shared = self.Global.SharedFolder
    local areas, seen = {}, {}
    local function add(name, getPosition)
        local info = self.Global.SharedData.ZoneInfo and self.Global.SharedData.ZoneInfo[name]
        local label = string.lower(name .. " " .. (info and info.Name or ""))
        if label:find("mine", 1, true) or label:find("cav", 1, true) or label:find("quarr", 1, true) then
            local ok, position = pcall(getPosition)
            if ok and typeof(position) == "Vector3" then
                local key = name .. ":" .. tostring(math.floor(position.X / 20)) .. ":" .. tostring(math.floor(position.Z / 20))
                if not seen[key] then
                    seen[key] = true
                    areas[#areas + 1] = {name = name, position = position}
                end
            end
        end
    end
    for _,area in ipairs(VERIFIED_SEARCH_AREAS)do
        add(area.name,function()return area.position end)
    end
    for _, folderName in ipairs({"Biomes", "Caves", "LandmarkZones"}) do
        local folder = shared and shared:FindFirstChild(folderName)
        for _, zone in ipairs(folder and folder:GetChildren() or {}) do
            add(zone.Name, function()
                if zone:IsA("BasePart") then return zone.Position end
                if zone:IsA("Model") then return zone:GetBoundingBox().Position end
                local part = zone:FindFirstChildWhichIsA("BasePart", true)
                return part and part.Position
            end)
        end
    end
    -- O jogo pode remover os modelos de zonas depois da inicializacao.
    -- SharedUtils conserva suas caixas para consultas de bioma/caverna.
    local utils = self.Global.SharedUtils or {}
    for _, mapName in ipairs({"BiomeZones", "CaveZones", "LandmarkZones"}) do
        local map = utils[mapName]
        for _, bounds in pairs(map and map.NearBounds or {}) do
            if bounds.model and bounds.center then
                add(bounds.model.Name, function() return bounds.center:Inverse().Position end)
            end
        end
    end
    return areas
end

-- Apenas peças que realmente sobrepõem a hitbox animada podem receber o golpe.
-- A classe PickaxeItemType exige que a peça seja filha direta do depósito.
function Mining:_OverlappingOrePart(item, deposit)
    if not item.Hitbox or not item.Hitbox.Parent then return nil end
    local filter = OverlapParams.new()
    filter.FilterType = Enum.RaycastFilterType.Include
    filter.FilterDescendantsInstances = { deposit }
    filter.CollisionGroup = item.Hitbox.CollisionGroup
    for _, part in ipairs(self.Workspace:GetPartsInPart(item.Hitbox, filter)) do
        if part.Parent == deposit then
            return part
        end
    end
    return nil
end

-- Retorno true significa que o fluxo local registrou contato; a resposta do
-- servidor deve ser confirmada pelo inventário/DepositInfo no controlador.
function Mining:_RestoreFacing(guard)
    if not guard or guard.closed then return end
    guard.closed = true
    if self.faceGuard == guard then self.faceGuard = nil end
    if guard.connection then guard.connection:Disconnect() end
    if guard.renderName then self.RunService:UnbindFromRenderStep(guard.renderName) end
    local character = self.Global.PlayerCharacter
    if character == guard.character and character.Character == guard.model
        and character.RootPart == guard.root then
        pcall(function() character:FaceMouse(guard.previous) end)
    end
    if guard.human and guard.human.Parent then
        pcall(function() guard.human.AutoRotate = guard.autoRotate end)
    end
    if guard.camera and self.Workspace.CurrentCamera == guard.camera then
        pcall(function()
            guard.camera.CameraType = guard.cameraType
            if character.Character == guard.model then
                guard.camera.CFrame = guard.cameraFrame
                guard.camera.Focus = guard.cameraFocus
            end
        end)
    end
    if guard.cameraDisabled then
        pcall(function()
            guard.gameCamera.CameraCFrame = guard.gameCameraFrame
        end)
        -- Também libera o controlador após morte/respawn, para não deixar a
        -- próxima câmera presa ao minério do personagem anterior.
        pcall(function() guard.gameCamera:Enable() end)
    end
end

function Mining:_PointAtDeposit(guard)
    if guard.closed then return false, "Mira interrompida" end
    local character, root, human = self.Global.PlayerCharacter, guard.root, guard.human
    if character ~= guard.character or character.Character ~= guard.model
        or character.RootPart ~= root or not root.Parent
        or not human.Parent or human.Health <= 0 then
        return false, "Personagem indisponível durante a mineração"
    end
    if not guard.deposit.Parent or not guard.target.Parent
        or not guard.target:IsDescendantOf(guard.deposit) then
        return false, "Depósito removido durante a mineração"
    end
    local center = guard.target.Position
    local horizontal = Vector3.new(center.X - root.Position.X, 0, center.Z - root.Position.Z)
    -- A rotação é reaplicada na preparação e durante toda a animação; o motor
    -- do Humanoid e o movimento do mouse não podem desfazer a direção do golpe.
    character:FaceMouse(false)
    human.AutoRotate = false
    human:Move(Vector3.zero, false)
    if horizontal.Magnitude > 0.05 then
        root.CFrame = CFrame.lookAt(root.Position, root.Position + horizontal)
    end
    if self.Workspace.CurrentCamera ~= guard.camera then
        return false, "Câmera alterada durante a mineração"
    end
    local origin = guard.cameraFrame.Position + root.Position - guard.rootPosition
    if (center - origin).Magnitude < 0.05 then
        origin = root.Position - root.CFrame.LookVector * 6 + Vector3.new(0, 2, 0)
    end
    local aim = CFrame.lookAt(origin, center)
    guard.camera.CameraType = Enum.CameraType.Scriptable
    guard.camera.CFrame = aim
    guard.camera.Focus = CFrame.new(center)
    guard.gameCamera.CameraCFrame = aim
    guard.aimPosition = center
    return true
end

function Mining:MineOnce(deposit, cancelled)
    if self.faceGuard then return false, "Outro golpe ainda está em andamento" end
    local character = self.Global.PlayerCharacter
    local root = character.RootPart
    local state = self:GetDepositState(deposit)
    local human = character.Human
    local camera, gameCamera = self.Workspace.CurrentCamera, self.Global.Camera
    if not character.Character or not root or not root.Parent or not state
        or not human or human.Health <= 0 then
        return false, "Personagem ou depósito indisponível"
    end
    if not camera or not gameCamera then return false, "Câmera indisponível para mirar o minério" end
    local ore = deposit:FindFirstChild("RockOre", true)
        or deposit:FindFirstChild(state.name .. "Ore", true)
    local guard = {
        character = character,
        model = character.Character,
        root = root,
        rootPosition = root.Position,
        human = human,
        autoRotate = human.AutoRotate,
        previous = character.FacingMouse,
        deposit = deposit,
        target = ore and ore:IsA("BasePart") and ore or state.primaryPart,
        camera = camera,
        cameraFrame = camera.CFrame,
        cameraFocus = camera.Focus,
        cameraType = camera.CameraType,
        gameCamera = gameCamera,
        gameCameraFrame = gameCamera.CameraCFrame,
        generation = self.generation,
    }
    self.faceGuard = guard
    local function isCancelled()
        return guard.closed or self:_Cancelled(guard.generation, cancelled)
    end
    local function point()
        if isCancelled() then self:_RestoreFacing(guard); return end
        local ok, aimed, message = pcall(self._PointAtDeposit, self, guard)
        if not ok or not aimed then
            guard.error = ok and message or tostring(aimed)
            self:_RestoreFacing(guard)
        end
    end
    local ok, result, message = pcall(function()
        guard.cameraDisabled = true
        gameCamera:Disable()
        point()
        if guard.closed then return false, guard.error or "Cancelado" end
        guard.connection = self.RunService.PreSimulation:Connect(point)
        guard.renderName = "TWWMinerAim_" .. tostring(guard)
        self.RunService:BindToRenderStep(guard.renderName, Enum.RenderPriority.Last.Value + 1, point)
        -- Deixa o rig ler a nova direção antes de iniciar um Swing já preparado.
        self.RunService.Heartbeat:Wait()
        return self:_MineOnce(deposit, isCancelled)
    end)
    self:_RestoreFacing(guard)
    if not ok then
        self:Stop()
        return false, "Falha ao minerar: " .. tostring(result)
    end
    if not result and self.activeItem then self:Stop() end
    if guard.error then return false, guard.error end
    return result, message
end

function Mining:_MineOnce(deposit, cancelled)
    local generation = self.generation
    local before = self:GetDepositState(deposit)
    if not before or before.remaining <= 0 then
        return false, "Depósito esgotado ou indisponível"
    end
    if deposit:HasTag("JailOre") then
        return false, "Minério de prisão ignorado"
    end
    local character = self.Global.PlayerCharacter
    local item = character:GetEquippedItem()
    if not self:IsPickaxe(character:GetEquippedItemData()) or not item or not item.IsEquipped then
        return false, "Picareta não equipada"
    end
    local equippedData = character:GetEquippedItemData()
    local pickaxeInfo = self.Global.SharedData.PlayerItems[equippedData.Type]
    local pickaxeTier = tonumber(pickaxeInfo.PickaxeTier)
    local requiredTier = tonumber(before.info.NeedsTier)
    if not pickaxeTier or not requiredTier then
        return false, "Não foi possível confirmar o nível exigido para este depósito"
    end
    if pickaxeTier < requiredTier then
        return false, string.format("%s exige picareta nível %d; sua picareta é nível %d",
            before.name, requiredTier, pickaxeTier)
    end
    if not character.RootPart or not character.Human or character.Human.Health <= 0 then
        return false, "Personagem indisponível"
    end
    local deadline = os.clock() + 8
    while os.clock() < (item.NextCanSwing or 0) or item.Swinging do
        if self:_Cancelled(generation, cancelled) then return false, "Cancelado" end
        if os.clock() >= deadline then return false, "Aguardando fim do golpe" end
        task.wait(0.03)
    end
    if self:_Cancelled(generation, cancelled) then return false, "Cancelado" end
    if character.IsSwitchingItems or item.DisableSwinging then
        return false, "Picareta ocupada"
    end
    self.activeItem = item
    local previousTimestamp = item.LastSwingTimestamp
    item:Swing()
    local started = false
    local contactResult, contactMessage
    deadline = os.clock() + 8
    repeat
        if self:_Cancelled(generation, cancelled) then
            return false, "Cancelado"
        end
        if character:GetEquippedItem() ~= item or not item.IsEquipped then
            self.activeItem = nil
            return false, "Picareta desequipada"
        end
        if item.Swinging and item.LastSwingTimestamp ~= previousTimestamp then started = true end
        if started and item.HitDebounce and contactResult == nil then
            local contacted = self.Global.MiningHandler.MiningDeposit
            if contacted and contacted.obj == deposit then
                contactResult, contactMessage = true, "Contato de mineração registrado"
            else
                contactResult, contactMessage = false, "A picareta tocou outro depósito"
            end
        end
        if contactResult == nil and item.DealsDamage and item.Swinging
            and os.clock() < (item.SwingEndTime or 0) then
            local part = self:_OverlappingOrePart(item, deposit)
            if part then
                item:OnMeleeHit(part)
                if item.HitDebounce then
                    local contacted = self.Global.MiningHandler.MiningDeposit
                    if contacted and contacted.obj == deposit then
                        contactResult, contactMessage = true, "Contato de mineração registrado"
                    else
                        contactResult, contactMessage = false, "Contato não aceito pelo fluxo local"
                    end
                end
            end
        end
        if started and not item.Swinging then break end
        local state = self:GetDepositState(deposit)
        if not state or (state.remaining <= 0 and contactResult == nil) then break end
        task.wait(0.02)
    until os.clock() >= deadline
    if item.Swinging or (item:HasTrack("ReadySwing") and item:IsTrackPlaying("ReadySwing")) then
        self:Stop()
    else
        self.activeItem = nil
    end
    if contactResult ~= nil then return contactResult, contactMessage end
    return false, started and "A picareta não tocou o depósito" or "Golpe não iniciado"
end

function Mining:Stop()
    self.generation = self.generation + 1
    self:_RestoreFacing(self.faceGuard)
    local item = self.activeItem
    self.activeItem = nil
    if not item then return end

    -- StopTrack retoma a corrotina de ReadySwing. Bloqueia a entrada real de
    -- MeleeItemType:Swing antes de liberá-la, sem alterar NextCanSwing.
    local earlierGuard = self.stopGuards[item]
    local previous = item.DisableSwinging
    if earlierGuard then previous = earlierGuard.previous end
    local guard = { previous = previous }
    self.stopGuards[item] = guard
    item.DisableSwinging = true
    item:CancelSwing()
    if item:HasTrack("ReadySwing") and item:IsTrackPlaying("ReadySwing") then
        item:StopTrack("ReadySwing", 0)
    end
    task.delay(0.1, function()
        if self.stopGuards[item] ~= guard then return end
        self.stopGuards[item] = nil
        if item.DisableSwinging == true then
            item.DisableSwinging = guard.previous
        end
    end)
end

return Mining

end)()
local Flight = (function()
-- Voo baixo: segue o piso, conserva colisoes e recalcula apos correcoes externas.
local Flight = {}
Flight.__index = Flight
local MAX_CAST_DISTANCE = 512
local UP = Vector3.new(0, 1, 0)

local function isRagdolled(pc)
    if not pc or type(pc.IsRagdolled) ~= "function" then return false end
    local ok, value = pcall(pc.IsRagdolled, pc)
    return ok and value == true
end

function Flight.create(Global, options)
    return setmetatable({Global = Global, options = options or {}, generation = 0,
        RunService = game:GetService("RunService"), active = nil, trace = {}}, Flight)
end

function Flight:_Release(resource)
    if not resource or resource.closed then return end
    resource.closed = true
    if self.options.flightActive == resource then self.options.flightActive = nil end
    if resource.connection then pcall(function() resource.connection:Disconnect() end) end
    if resource.inputName then pcall(function() self.RunService:UnbindFromRenderStep(resource.inputName) end) end
    local root, human = resource.root, resource.human
    if resource.velocity then pcall(function() resource.velocity.VectorVelocity = Vector3.zero end) end
    if root and root.Parent then
        pcall(function() root.AssemblyLinearVelocity = Vector3.zero end)
    end
    for _, object in ipairs(resource.objects) do pcall(function() object:Destroy() end) end
    if human and human.Parent and not isRagdolled(resource.pc) then
        -- Restaurar apenas o que este voo mudou. GettingUp a cada chegada
        -- interrompia animacoes e podia derrubar o personagem durante a mineracao.
        if resource.changedAutoRotate and human.AutoRotate == false then
            pcall(function() human.AutoRotate = resource.autoRotate end)
        end
        if resource.changedPlatformStand and human.PlatformStand == true then
            pcall(function() human.PlatformStand = resource.platformStand end)
        end
    end
    local pc = self.Global.PlayerCharacter
    if pc and pc.Character == resource.model and pc.RootPart == root and resource.changedFacingMouse then
        pcall(function() pc:FaceMouse(resource.facingMouse) end)
    end
    if self.active == resource then self.active = nil end
end

function Flight:Stop()
    self.generation = self.generation + 1
    self:_Release(self.active)
end

function Flight:_Parameters(model, root)
    local parameters = RaycastParams.new()
    parameters.FilterType = Enum.RaycastFilterType.Exclude
    parameters.FilterDescendantsInstances = {model}
    parameters.RespectCanCollide = true
    parameters.CollisionGroup = root.CollisionGroup
    return parameters
end

function Flight:_Blockcast(origin, size, delta, parameters)
    local distance = delta.Magnitude
    if distance < 0.001 then return nil end
    local direction = delta.Unit
    local traveled = 0
    -- O limite do motor vale para cada cast, mesmo quando o destino esta longe.
    while traveled < distance do
        local length = math.min(MAX_CAST_DISTANCE, distance - traveled)
        local hit = workspace:Blockcast(CFrame.new(origin + direction * traveled),
            size, direction * length, parameters)
        if hit then return hit end
        traveled = traveled + length
    end
    return nil
end

function Flight:ClearSegment(origin, destination, model, root)
    local hit = self:_Blockcast(origin, self:_BodySize(model, root), destination - origin,
        self:_Parameters(model, root))
    return hit == nil, hit
end

function Flight:_RootHeight(model, root)
    if self.options.rootHeight then return math.clamp(self.options.rootHeight, 2, 6) end
    local pc = self.Global.PlayerCharacter
    local human = pc and pc.Character == model and pc.Human
        or model:FindFirstChildWhichIsA("Humanoid")
    local height = human and human.HipHeight + root.Size.Y / 2 or 3
    if human and human.RigType == Enum.HumanoidRigType.R6 then
        local leg = model:FindFirstChild("Left Leg") or model:FindFirstChild("Right Leg")
        height = height + (leg and leg:IsA("BasePart") and leg.Size.Y or 2)
    end
    return math.clamp(height, 2, 6)
end

function Flight:_Clearance()
    return math.clamp(tonumber(self.options.flightClearance) or 1.5, 0.75, 1.5)
end

function Flight:_BodySize(model, root)
    -- Inclui pernas e cabeca: verificar so o RootPart deixava os pes prenderem.
    return Vector3.new(math.max(root.Size.X, 2.3),
        math.max(self:_RootHeight(model, root) * 2, 5), math.max(root.Size.Z, 2))
end

function Flight:_GroundAt(position, floorY, parameters, initial)
    local stepUp = 2.5
    local drop = initial and 256 or 6
    local hit = workspace:Raycast(Vector3.new(position.X, floorY + stepUp, position.Z),
        -UP * (stepUp + drop), parameters)
    if not hit or hit.Normal.Y < 0.55 or hit.Material == Enum.Material.Water then return nil end
    return hit.Position
end

function Flight:_GroundRoute(origin, requested, model, root, cancelled)
    local height, clearance = self:_RootHeight(model, root), self:_Clearance()
    local parameters = self:_Parameters(model, root)
    local ground = self:_GroundAt(origin, origin.Y - height, parameters, true)
    if not ground then return nil, "Piso indisponível para voo baixo" end
    local previous = Vector3.new(origin.X, ground.Y + height + clearance, origin.Z)
    local points, sourceIndices = {}, {}
    if (previous - origin).Magnitude > 0.15 then
        -- Se a execucao anterior deixou o personagem alto, desce primeiro no
        -- mesmo lugar. Nenhuma travessia lateral e feita nessa altura.
        if not self:ClearSegment(origin, previous, model, root) then
            return nil, "Obstáculo ao ajustar a altura do voo"
        end
        points[#points + 1] = previous
        sourceIndices[#points] = 1
    end
    local count = 0
    for sourceIndex, target in ipairs(requested) do
        if typeof(target) ~= "Vector3" then return nil, "Trajeto de voo inválido" end
        local from = previous
        local flat = Vector3.new(target.X - from.X, 0, target.Z - from.Z)
        local steps = math.max(1, math.ceil(flat.Magnitude / 2.5))
        for step = 1, steps do
            count = count + 1
            if cancelled and cancelled() then return nil, "Cancelado" end
            local sample = from + flat * (step / steps)
            local floor = self:_GroundAt(sample, ground.Y, parameters)
            if not floor or floor.Y - ground.Y > 2.5 or ground.Y - floor.Y > 4 then
                return nil, "Sem piso contínuo para voo baixo"
            end
            local point = Vector3.new(sample.X, floor.Y + height + clearance, sample.Z)
            if not self:ClearSegment(previous, point, model, root) then
                return nil, "Obstáculo no trajeto de voo baixo"
            end
            if (point - previous).Magnitude > 0.1 then
                points[#points + 1] = point
                sourceIndices[#points] = sourceIndex
            end
            previous, ground = point, floor
            if count % 64 == 0 then task.wait() end
        end
        -- Nao confundir o piso de outro andar com o destino solicitado.
        if math.abs(previous.Y - clearance - target.Y) > clearance + 3 then
            return nil, "Destino em outro nível; procurando acesso pelo caminho"
        end
    end
    if #points == 0 then points[1], sourceIndices[1] = previous, #requested end
    return points, nil, sourceIndices
end

function Flight:PlanRoute(origin, destination, model, root)
    return self:_GroundRoute(origin, {destination}, model, root)
end

function Flight:MoveTo(destination, cancelled, onTrace, tolerance)
    self:Stop()
    -- Uma tentativa recusada antes de decolar nao herda a recuperacao anterior.
    self.trace = {stage = "planning"}
    local generation = self.generation
    local pc = self.Global.PlayerCharacter
    if not pc then return false, "Personagem indisponível" end
    local root, human, model = pc.RootPart, pc.Human, pc.Character
    local requested = typeof(destination) == "Vector3" and {destination} or destination
    if type(requested) ~= "table" or #requested == 0 or not model or not root or not root.Parent
        or not human or human.Health <= 0 then
        return false, "Personagem ou destino indisponível"
    end
    if root.Anchored or root.AssemblyMass == math.huge then
        return false, "Personagem imobilizado; voo não iniciado"
    end
    if isRagdolled(pc) then return false, "Personagem caído; aguardando recuperação" end
    local speed = tonumber(self.options.flightSpeed) or 18
    if speed ~= speed or speed < 1 or speed > 80 then
        return false, "Velocidade de voo inválida (1 a 80 studs/s)"
    end
    tolerance = tolerance or 0.6
    for _, point in ipairs(requested) do
        if typeof(point) ~= "Vector3" then return false, "Trajeto de voo inválido" end
    end
    local function isCancelled()
        return generation ~= self.generation or (cancelled and cancelled())
    end
    local points, planError, sourceIndices = self:_GroundRoute(root.Position, requested, model, root, isCancelled)
    if not points then self.trace = {stage = "failed", message = planError}; return false, planError end
    if isCancelled() then return false, "Cancelado" end
    destination = points[1]
    if #points == 1 and (destination - root.Position).Magnitude <= tolerance then return true end
    local resource = {pc = pc, root = root, human = human, model = model, objects = {},
        autoRotate = human.AutoRotate, platformStand = human.PlatformStand,
        facingMouse = pc.FacingMouse, closed = false, waypointIndex = 1,
        started = os.clock(), lastPosition = root.Position, lastVelocity = Vector3.zero,
        origin = root.Position,
        progressPosition = root.Position, progressTime = os.clock(),
        motionAnchor = root.Position, motionAt = os.clock()}
    resource.initialHeightAdjust = Vector3.new(destination.X - root.Position.X, 0,
        destination.Z - root.Position.Z).Magnitude < 0.1
        and math.abs(destination.Y - root.Position.Y) > 2
    self.active = resource
    -- Token de posse: um cleanup antigo nao remove a marca de um voo novo.
    self.options.flightActive = resource
    local function create(className, properties)
        local object = Instance.new(className)
        resource.objects[#resource.objects + 1] = object
        for key, value in pairs(properties) do object[key] = value end
        return object
    end
    local function trace(stage, message)
        self.trace = {stage = stage, message = message, targetSpeed = speed,
            actualSpeed = root.AssemblyLinearVelocity.Magnitude,
            distance = (destination - root.Position).Magnitude,
            elapsed = os.clock() - resource.started, waypointIndex = resource.waypointIndex,
            requestedWaypointIndex = sourceIndices[resource.waypointIndex],
            recovery = resource.recovery, groundClearance = resource.groundClearance}
        if onTrace then onTrace(self.trace) end
    end
    local function run()
        if human.AutoRotate ~= false then
            resource.changedAutoRotate = true
            human.AutoRotate = false
        end
        if human.PlatformStand ~= true then
            resource.changedPlatformStand = true
            human.PlatformStand = true
        end
        if pc.FacingMouse ~= false then
            resource.changedFacingMouse = true
            pc:FaceMouse(false)
        end
        human:Move(Vector3.zero, false)
        resource.inputName = "TWWMinerFlightInput_" .. tostring(resource)
        self.RunService:BindToRenderStep(resource.inputName, Enum.RenderPriority.Input.Value + 10,
            function() if not resource.closed and human.Parent then human:Move(Vector3.zero, false) end end)
        local attachment = create("Attachment", {Name = "TWWMinerFlightAttachment", Parent = root})
        local velocity = create("LinearVelocity", {
            Name = "TWWMinerFlightVelocity", Attachment0 = attachment,
            RelativeTo = Enum.ActuatorRelativeTo.World,
            VelocityConstraintMode = Enum.VelocityConstraintMode.Vector,
            ForceLimitsEnabled = true, ForceLimitMode = Enum.ForceLimitMode.PerAxis,
            -- Aceleracao horizontal nao pode consumir a forca que sustenta o peso.
            MaxAxesForce = Vector3.new(root.AssemblyMass * 120,
                root.AssemblyMass * (workspace.Gravity + 150), root.AssemblyMass * 120),
            VectorVelocity = Vector3.zero, Parent = root,
        })
        resource.velocity = velocity
        local orientation = create("AlignOrientation", {
            Name = "TWWMinerFlightOrientation", Attachment0 = attachment,
            Mode = Enum.OrientationAlignmentMode.OneAttachment,
            MaxTorque = root.AssemblyMass * 20000,
            MaxAngularVelocity = 12, Responsiveness = 40,
            CFrame = root.CFrame.Rotation, Parent = root,
        })
        local parameters = self:_Parameters(model, root)
        local rootHeight, clearance = self:_RootHeight(model, root), self:_Clearance()
        local bodySize = self:_BodySize(model, root)
        local totalDistance = (destination - root.Position).Magnitude
        for i = 2, #points do totalDistance = totalDistance + (points[i] - points[i - 1]).Magnitude end
        local remainingAfter = {[#points] = 0}
        for i = #points - 1, 1, -1 do
            remainingAfter[i] = remainingAfter[i + 1] + (points[i + 1] - points[i]).Magnitude
        end
        local nextTurn, turnAt = {}, nil
        for i = #points - 1, 1, -1 do
            local incoming = points[i] - (points[i - 1] or resource.origin)
            local outgoing = points[i + 1] - points[i]
            if incoming.Magnitude > 0.01 and outgoing.Magnitude > 0.01
                and incoming.Unit:Dot(outgoing.Unit) < 0.94 then turnAt = i end
            nextTurn[i] = turnAt
        end
        local deadline = os.clock() + totalDistance / speed + 12 + #points * 0.1
        resource.connection = self.RunService.PreSimulation:Connect(function(dt)
            if resource.done or resource.closed then return end
            local ok, err = pcall(function()
                if isCancelled() then resource.error = "Cancelado"; resource.done = true; return end
                if pc.Character ~= model or pc.RootPart ~= root or not root.Parent or human.Health <= 0 then
                    resource.error = "Personagem mudou durante o voo"; resource.done = true; return
                end
                if isRagdolled(pc) then
                    resource.error = "Personagem caído; aguardando recuperação"
                    resource.recovery = "ragdoll"
                    resource.done = true
                    return
                end
                dt = math.max(dt, 1 / 240)
                local actual = root.Position
                local expected = resource.lastPosition + resource.lastVelocity * dt
                local allowed = math.max(self.options.repositionTolerance or 7, speed * dt * 2 + 2)
                if (actual - expected).Magnitude > allowed then
                    resource.error = "Posição alterada; recalculando rota"
                    resource.recovery = "repositioned"
                    resource.terminal = false
                    resource.done = true
                    return
                end
                local delta = destination - actual
                local updatedSpeed = tonumber(self.options.flightSpeed) or speed
                if updatedSpeed ~= updatedSpeed or updatedSpeed < 1 or updatedSpeed > 80 then
                    resource.error = "Velocidade de voo inválida (1 a 80 studs/s)"
                    resource.done = true
                    return
                end
                if updatedSpeed ~= speed then
                    speed = updatedSpeed
                    local remainingDistance = delta.Magnitude
                    for i = resource.waypointIndex + 1, #points do
                        remainingDistance = remainingDistance + (points[i] - points[i - 1]).Magnitude
                    end
                    deadline = os.clock() + remainingDistance / speed + 12
                        + (#points - resource.waypointIndex + 1) * 0.1
                end
                local function passedWaypoint()
                    if resource.waypointIndex >= #points then return false end
                    local previous = points[resource.waypointIndex - 1] or resource.origin
                    local segment = destination - previous
                    if segment.Magnitude < 0.01 then return true end
                    local progress = (actual - previous):Dot(segment.Unit)
                    local sideDistance = (actual - previous - segment.Unit * progress).Magnitude
                    return progress >= segment.Magnitude and sideDistance <= math.max(tolerance, 1)
                end
                while delta.Magnitude <= tolerance or passedWaypoint() do
                    if resource.waypointIndex >= #points then resource.done = true; return end
                    resource.waypointIndex = resource.waypointIndex + 1
                    destination = points[resource.waypointIndex]
                    delta = destination - actual
                end
                if os.clock() > deadline then
                    resource.error = "Tempo esgotado no voo"; resource.done = true; return
                end
                if not resource.initialHeightAdjust or resource.waypointIndex > 1 then
                    local floor = self:_GroundAt(actual, actual.Y - rootHeight - clearance, parameters)
                    if not floor then
                        resource.error = "Piso perdido; recalculando voo baixo"
                        resource.done = true
                        return
                    end
                    resource.groundClearance = actual.Y - floor.Y - rootHeight
                    local horizontal = Vector3.new(delta.X, 0, delta.Z)
                    local floorAhead = floor
                    if horizontal.Magnitude > 0.1 then
                        local look = actual + horizontal.Unit * math.min(horizontal.Magnitude,
                            math.min(2.5, math.max(0.75, speed * 0.15)))
                        floorAhead = self:_GroundAt(look, floor.Y, parameters)
                        if not floorAhead or floorAhead.Y - floor.Y > 2.5 or floor.Y - floorAhead.Y > 4 then
                            resource.error = "Piso interrompido; procurando outro caminho"
                            resource.done = true
                            return
                        end
                    end
                    -- Antecipa a subida e so desce depois de passar pela borda.
                    -- Assim os pes conservam folga sobre rampas e pequenos degraus.
                    local heightError = math.max(floor.Y, floorAhead.Y) + rootHeight + clearance - actual.Y
                    delta = Vector3.new(delta.X, heightError, delta.Z)
                    if resource.groundClearance < 0.65 or heightError > 1 then
                        delta = Vector3.new(0, heightError, 0)
                    end
                end
                if delta.Magnitude < 0.001 then
                    velocity.VectorVelocity = Vector3.zero
                    return
                end
                local remaining = (destination - actual).Magnitude + remainingAfter[resource.waypointIndex]
                -- A chegada precisa de espaco para frear mesmo com o slider em 80.
                local commandSpeed = math.min(speed, delta.Magnitude / dt,
                    math.sqrt(2 * 100 * math.max(remaining - tolerance * 0.5, 0.01)))
                local turn = nextTurn[resource.waypointIndex]
                if turn then
                    local untilTurn = math.max(remaining - remainingAfter[turn], 0)
                    commandSpeed = math.min(commandSpeed, math.sqrt(12 * 12 + 2 * 100 * untilTurn))
                end
                local command = delta.Unit * commandSpeed
                -- A sustentacao tem forca finita. Uma descida a 80 nao parava
                -- antes do piso; limita a componente vertical sem saltar posicao.
                local verticalLimit = command.Y < 0 and 6 or 10
                if math.abs(command.Y) > verticalLimit then
                    command = command * (verticalLimit / math.abs(command.Y))
                end
                local lookAhead = math.min(delta.Magnitude, math.max(speed * dt * 2, 0.35))
                local hit = self:_Blockcast(actual, bodySize, delta.Unit * lookAhead, parameters)
                if hit then
                    resource.error = "Obstáculo no trajeto de voo baixo"; resource.done = true; return
                end
                if (actual - resource.progressPosition).Magnitude >= 0.5 then
                    resource.progressPosition, resource.progressTime = actual, os.clock()
                elseif os.clock() - resource.progressTime > 2.5 then
                    resource.error = "Voo bloqueado; posição não avançou"; resource.done = true; return
                end
                if os.clock() - resource.motionAt >= 1.5 then
                    -- Ir e voltar alguns centimetros nao conta como avancar.
                    -- Libera o voo para a navegacao poder pular e refazer a rota.
                    if (actual - resource.motionAnchor).Magnitude < math.clamp(speed * 0.3, 0.3, 1.5) then
                        resource.error = "Voo sem progresso; recalculando passagem"
                        resource.done = true
                        return
                    end
                    resource.motionAnchor, resource.motionAt = actual, os.clock()
                end
                velocity.MaxAxesForce = Vector3.new(root.AssemblyMass * 120,
                    root.AssemblyMass * (workspace.Gravity + 150), root.AssemblyMass * 120)
                velocity.VectorVelocity = command
                local horizontal = Vector3.new(delta.X, 0, delta.Z)
                if horizontal.Magnitude > 0.05 then
                    orientation.CFrame = CFrame.lookAt(Vector3.zero, horizontal)
                end
                resource.lastPosition, resource.lastVelocity = actual, command
                trace("flying")
            end)
            if not ok then resource.error = tostring(err); resource.done = true end
            if resource.done then velocity.VectorVelocity = Vector3.zero end
        end)
        repeat
            if isCancelled() then resource.error = "Cancelado"; resource.done = true end
            task.wait(0.03)
        until resource.done or resource.closed
        if not resource.closed and root.Parent and velocity.Parent then
            velocity.VectorVelocity = Vector3.zero
            self.RunService.Heartbeat:Wait()
        end
        if resource.error then trace("failed", resource.error) else trace("arrived") end
        return resource.error == nil and not resource.closed, resource.error, resource.terminal == true
    end
    local ok, success, message, terminal = pcall(run)
    self:_Release(resource)
    if not ok then return false, "Falha no voo: " .. tostring(success) end
    return success, message or (success and "Destino alcançado" or "Cancelado"), terminal
end

return Flight

end)()
local Ladder = (function()
-- Conecta acessos de escadas reais usando o movimento normal do Humanoid.
local Ladder = {}
Ladder.__index = Ladder
local UP = Vector3.new(0, 1, 0)

local function flat(value)
    return Vector3.new(value.X, 0, value.Z)
end

local function alive(pc)
    return pc and pc.Character and pc.RootPart and pc.RootPart.Parent
        and pc.Human and pc.Human.Parent and pc.Human.Health > 0
end

local function ragdolled(pc)
    if type(pc.IsRagdolled) ~= "function" then return false end
    local ok, result = pcall(pc.IsRagdolled, pc)
    return not ok or result == true
end

function Ladder.create(Global, options)
    return setmetatable({Global = Global, options = options or {},
        Workspace = game:GetService("Workspace"), RunService = game:GetService("RunService"),
        generation = 0, active = nil, trace = {stage = "idle"}, parts = {}, scanned = -math.huge,
        failedParts = setmetatable({}, {__mode="k"})}, Ladder)
end

function Ladder:_RootHeight(pc)
    if self.options.rootHeight then return math.clamp(self.options.rootHeight, 2, 6) end
    local human, root = pc.Human, pc.RootPart
    local height = human.HipHeight + root.Size.Y / 2
    if human.RigType == Enum.HumanoidRigType.R6 then
        local leg = pc.Character:FindFirstChild("Left Leg") or pc.Character:FindFirstChild("Right Leg")
        height = height + (leg and leg:IsA("BasePart") and leg.Size.Y or 2)
    end
    return math.clamp(height, 2, 6)
end

function Ladder:_Parameters(pc, part)
    local parameters = RaycastParams.new()
    parameters.FilterType = Enum.RaycastFilterType.Exclude
    local excluded = {pc.Character, part}
    if pc.ClimbPart then excluded[#excluded+1] = pc.ClimbPart end
    parameters.FilterDescendantsInstances = excluded
    parameters.RespectCanCollide = true
    parameters.CollisionGroup = pc.RootPart.CollisionGroup
    parameters.IgnoreWater = false
    return parameters
end

function Ladder:_Access(position, level, height, parameters)
    -- Comecar perto da extremidade evita confundir o fundo da mina com o
    -- patamar superior. A escada nunca serve como seu proprio piso.
    local hit = self.Workspace:Raycast(Vector3.new(position.X, level + 6, position.Z),
        -UP * 14, parameters)
    if not hit or hit.Normal.Y < 0.55 or hit.Material == Enum.Material.Water
        or math.abs(hit.Position.Y - level) > 8 then return nil end
    return Vector3.new(position.X, hit.Position.Y + height, position.Z)
end

function Ladder:_Geometry(part)
    local frame, size = part.CFrame, part.Size
    -- CustomLadder cilindrica usa X como eixo longitudinal no mapa.
    if part:IsA("Part") and part.Shape == Enum.PartType.Cylinder then
        frame = frame * CFrame.Angles(0, 0, frame.XVector.Y > 0 and -math.pi / 2 or math.pi / 2)
        size = Vector3.new(size.Y, size.X, size.Z)
    end
    if math.abs(frame.UpVector.Y) < 0.7 or size.Y < 4 then return nil end
    if frame.UpVector.Y < 0 then frame = frame * CFrame.Angles(math.pi, 0, 0) end
    local normal, depth
    if size.X < size.Z then normal, depth = frame.XVector, size.X
    else normal, depth = frame.ZVector, size.Z end
    normal = flat(normal)
    if normal.Magnitude < 0.5 then return nil end
    return frame, size, normal.Unit, depth
end

function Ladder:GetLinks(origin, maxDistance)
    local pc = self.Global.PlayerCharacter
    if typeof(origin) ~= "Vector3" or not alive(pc) then return {} end
    maxDistance = math.clamp(tonumber(maxDistance) or 1000, 1, 3200)
    if os.clock() - self.scanned > (self.options.ladderScanInterval or 5) then
        self.parts = {}
        for _, part in ipairs(self.Workspace:GetDescendants()) do
            if part:IsA("BasePart") and (part.Name == "CustomLadder" or part:IsA("TrussPart"))
                and part ~= pc.ClimbPart and part.Name ~= "ClimbPart"
                and not part:IsDescendantOf(pc.Character) then
                self.parts[#self.parts + 1] = part
            end
        end
        self.scanned = os.clock()
    end
    local height, links = self:_RootHeight(pc), {}
    for _, part in ipairs(self.parts) do
        if part.Parent and part ~= pc.ClimbPart and (self.failedParts[part] or 0) <= os.clock()
            and (part.Position - origin).Magnitude
            <= maxDistance + part.Size.Magnitude / 2 then
            local frame, size, baseNormal, depth = self:_Geometry(part)
            if frame then
                local lowerEnd = frame.Position - frame.UpVector * size.Y / 2
                local upperEnd = frame.Position + frame.UpVector * size.Y / 2
                local parameters = self:_Parameters(pc, part)
                local offset = depth / 2 + 1.4
                for _, sign in ipairs({1, -1}) do
                    local normal = baseNormal * sign
                    local lower = self:_Access(lowerEnd + normal * offset,
                        lowerEnd.Y, height, parameters)
                    if lower then
                        -- No alto, o patamar pode ficar do mesmo lado ou atras
                        -- da escada. Ambos sao acessos reais, nunca pontos no ar.
                        for _, exitSign in ipairs({1, -1}) do
                            local upper = self:_Access(upperEnd + normal * offset * exitSign,
                                upperEnd.Y, height, parameters)
                            if upper and upper.Y - lower.Y >= 3
                                and math.min((lower - origin).Magnitude, (upper - origin).Magnitude) <= maxDistance then
                                links[#links + 1] = {part = part, lower = lower, upper = upper,
                                    normal = normal, cost = (upper - lower).Magnitude,
                                    frame = frame, size = size, depth = depth,
                                    lowerEnd = lowerEnd, upperEnd = upperEnd}
                            end
                        end
                    end
                end
            end
        end
    end
    table.sort(links, function(a, b)
        return math.min((a.lower - origin).Magnitude, (a.upper - origin).Magnitude)
            < math.min((b.lower - origin).Magnitude, (b.upper - origin).Magnitude)
    end)
    return links
end

function Ladder:_Release(resource)
    if not resource or resource.closed then return end
    resource.closed = true
    if resource.inputName then pcall(function() self.RunService:UnbindFromRenderStep(resource.inputName) end) end
    local pc, human = resource.pc, resource.human
    if human and human.Parent then
        pcall(function() human:Move(Vector3.zero, false) end)
        if resource.jumped then pcall(function() human.Jump = resource.jump end) end
        if resource.changedAutoRotate and human.AutoRotate == (resource.appliedAutoRotate == true) and not ragdolled(pc) then
            pcall(function() human.AutoRotate = resource.autoRotate end)
        end
    end
    if self.Global.PlayerCharacter == pc and pc.Character == resource.model
        and resource.changedFacingMouse and type(pc.FaceMouse) == "function" then
        pcall(pc.FaceMouse, pc, resource.facingMouse)
    end
    if self.options.ladderActive == resource then self.options.ladderActive = nil end
    if self.active == resource then self.active = nil end
end

function Ladder:Stop()
    self.generation = self.generation + 1
    self:_Release(self.active)
end

function Ladder:Destroy()
    self:Stop()
    self.parts = {}
end

function Ladder:_EscapeTarget(pc, part)
    local frame, _, normal = self:_Geometry(part)
    if not frame then return nil end
    local root, height = pc.RootPart, self:_RootHeight(pc)
    local fromCenter = flat(root.Position - frame.Position)
    if fromCenter:Dot(normal) < 0 then normal = -normal end
    local side = Vector3.new(-normal.Z, 0, normal.X)
    local parameters = self:_Parameters(pc, part)
    local best, bestCost
    for _, direction in ipairs({normal, (normal+side).Unit, (normal-side).Unit, side, -side}) do
        for _, distance in ipairs({2.75, 4}) do
            local point = root.Position + direction * distance
            local floor = self:_Access(point, root.Position.Y-height, height, parameters)
            if floor and floor.Y <= root.Position.Y+2 and floor.Y >= root.Position.Y-5 then
                local delta = floor-root.Position
                local hit = self.Workspace:Blockcast(CFrame.new(root.Position), Vector3.new(1.5,2,1.5),
                    flat(delta), parameters)
                if not hit then
                    local cost = delta.Magnitude + math.max(0, root.Position.Y-floor.Y)
                    if not bestCost or cost < bestCost then best,bestCost=floor,cost end
                end
            end
        end
    end
    return best
end

function Ladder:Escape(cancelled, onTrace)
    self:Stop()
    local pc = self.Global.PlayerCharacter
    if not alive(pc) or ragdolled(pc) then return false,"Character unavailable for ladder recovery" end
    local current = pc.CurrentLadder
    local part = current and current.Part
    if not part or not part.Parent then return false,"Ladder contact changed; replanning the route" end
    self.failedParts[part] = os.clock() + (self.options.ladderFailureCooldown or 60)
    local target = self:_EscapeTarget(pc, part)
    if not target then
        -- In the middle of a tall ladder, return to a real lower landing
        -- instead of jumping into empty space.
        local frame,size,normal,depth=self:_Geometry(part)
        if frame then
            if flat(pc.RootPart.Position-frame.Position):Dot(normal)<0 then normal=-normal end
            local lowerEnd,upperEnd=frame.Position-frame.UpVector*size.Y/2,frame.Position+frame.UpVector*size.Y/2
            local parameters=self:_Parameters(pc,part)
            local height=self:_RootHeight(pc)
            local lower=self:_Access(lowerEnd+normal*(depth/2+1.4),lowerEnd.Y,height,parameters)
            local upper=self:_Access(upperEnd+normal*(depth/2+1.4),upperEnd.Y,height,parameters)
            if lower and upper then
                return self:Traverse({part=part,lower=lower,upper=upper,normal=normal},false,cancelled,onTrace)
            end
        end
        return false,"No supported landing beside the ladder; replanning the route"
    end
    local human, root, generation = pc.Human,pc.RootPart,self.generation
    local resource={pc=pc,human=human,root=root,model=pc.Character,jump=human.Jump,
        autoRotate=human.AutoRotate,facingMouse=pc.FacingMouse,closed=false}
    self.active,self.options.ladderActive=resource,resource
    local started=os.clock()
    local function run()
        if type(pc.FaceMouse)=="function" then pc:FaceMouse(false);resource.changedFacingMouse=true end
        human.AutoRotate=true;resource.changedAutoRotate=true;resource.appliedAutoRotate=true
        resource.inputName="TWWMinerLadderEscape_"..tostring(resource)
        self.RunService:BindToRenderStep(resource.inputName,Enum.RenderPriority.Input.Value+20,function()
            if not resource.closed and self.Global.PlayerCharacter==pc and alive(pc) then
                local delta=flat(target-root.Position)
                human:Move(delta.Magnitude>.4 and delta.Unit or Vector3.zero,false)
            end
        end)
        local jumpAt=-math.huge
        while os.clock()-started<3 do
            if generation~=self.generation or resource.closed or (cancelled and cancelled()) then return false,"Cancelado" end
            if self.Global.PlayerCharacter~=pc or not alive(pc) or ragdolled(pc) then return false,"Personagem mudou durante a escada" end
            local now=os.clock()
            local climbing=pc.Climbing or pc.CurrentLadderMagnetized
            if not climbing and human.FloorMaterial~=Enum.Material.Air
                and flat(root.Position-target).Magnitude<1.25 then return true,"Left the ladder; replanning the route" end
            if climbing and now-jumpAt>1.3 then
                human.Jump=true;resource.jumped=true;jumpAt=now
            elseif resource.jumped and now-jumpAt>.2 then human.Jump=false end
            if onTrace then onTrace({stage="ladder_escape",message="Leaving an unintended ladder; replanning the route"}) end
            task.wait(.05)
        end
        return false,"Ladder recovery timed out; looking for another route"
    end
    local ok,success,message=pcall(run)
    self:_Release(resource)
    if not ok then return false,"Ladder recovery failed: "..tostring(success) end
    return success,message
end

function Ladder:Traverse(link, upwards, cancelled, onTrace)
    self:Stop()
    local pc = self.Global.PlayerCharacter
    if type(link) ~= "table" or not link.part or not link.part.Parent
        or typeof(link.lower) ~= "Vector3" or typeof(link.upper) ~= "Vector3"
        or typeof(link.normal) ~= "Vector3" or flat(link.normal).Magnitude < 0.5 then
        return false, "Escada indisponível"
    end
    if not alive(pc) or ragdolled(pc) then return false, "Personagem indisponível para escada" end
    if pc.Human.PlatformStand or pc.Flying or self.options.flightActive then
        return false, "Encerre o voo antes de usar a escada"
    end
    local generation, human, root, model = self.generation, pc.Human, pc.RootPart, pc.Character
    local normal = flat(link.normal).Unit
    local goal = upwards and link.upper or link.lower
    local initial = upwards and link.lower or link.upper
    local attached=pc.CurrentLadder and pc.CurrentLadder.Part==link.part
        and (pc.Climbing or pc.CurrentLadderMagnetized)
    if not attached and (root.Position - initial).Magnitude > (self.options.ladderApproachDistance or 8) then
        return false, "Aproxime-se do acesso da escada antes de subir"
    end
    local frame, size, _, depth = self:_Geometry(link.part)
    if not frame then return false, "Geometria da escada indisponível" end
    local resource = {pc = pc, human = human, root = root, model = model,
        facingMouse = pc.FacingMouse, autoRotate = human.AutoRotate, jump = human.Jump,
        started = os.clock(), progressAt = os.clock(), progress = root.Position,
        phase = attached and "climbing" or "mounting", command = Vector3.zero, closed = false}
    self.active, self.options.ladderActive = resource, resource
    local function isCancelled()
        if generation ~= self.generation or resource.closed then return true end
        if not cancelled then return false end
        local ok, value = pcall(cancelled)
        return not ok or value == true
    end
    local function emit(stage, message)
        self.trace = {stage = stage, message = message, upwards = upwards == true,
            elapsed = os.clock() - resource.started, distance = (goal - root.Position).Magnitude,
            ladder = link.part:GetFullName(), phase = resource.phase}
        if onTrace then onTrace(self.trace) end
    end
    local function run()
        if human.AutoRotate ~= false then human.AutoRotate = false; resource.changedAutoRotate = true end
        if pc.FacingMouse ~= false and type(pc.FaceMouse) == "function" then
            pc:FaceMouse(false)
            resource.changedFacingMouse = true
        end
        local faceDirection = -normal
        resource.inputName = "TWWMinerLadderInput_" .. tostring(resource)
        self.RunService:BindToRenderStep(resource.inputName, Enum.RenderPriority.Input.Value + 20, function()
            if resource.closed or pc.Character ~= model or pc.RootPart ~= root or not root.Parent
                or not human.Parent or human.Health <= 0 then return end
            human:Move(resource.command, false)
            -- Apenas orientacao: a posicao e conduzida pelo movimento do jogo.
            root.CFrame = CFrame.lookAt(root.Position, root.Position + faceDirection, UP)
        end)
        local deadline = resource.started + math.clamp(size.Y / 3 + 12, 14, 120)
        local mountedAt, dismountAt, emittedAt = nil, nil, -math.huge
        local bestHeight, heightAt = root.Position.Y, os.clock()
        local mount = frame.Position + normal * (depth / 2 + 1.25)
        while true do
            if isCancelled() then return false, "Cancelado" end
            if self.Global.PlayerCharacter ~= pc or pc.Character ~= model or pc.RootPart ~= root
                or not alive(pc) or ragdolled(pc) then
                return false, "Personagem mudou durante a escada"
            end
            if not link.part.Parent then return false, "Escada removida durante o percurso" end
            local now = os.clock()
            if now > deadline then return false, "Tempo esgotado na escada; recalculando acesso" end
            local climbing = pc.Climbing == true or human:GetState() == Enum.HumanoidStateType.Climbing
            local nearGoal = flat(root.Position - goal).Magnitude <= 2.25
                and math.abs(root.Position.Y - goal.Y) <= 2.5
            local grounded = human.FloorMaterial ~= Enum.Material.Air
            if nearGoal and grounded and not climbing
                and (upwards and root.Position.Y > initial.Y + 2 or not upwards and root.Position.Y < initial.Y - 2) then
                emit("ladder_arrived", "Acesso da escada alcançado")
                return true, "Acesso da escada alcançado"
            end
            if climbing then
                mountedAt = mountedAt or now
                if resource.phase == "mounting" then resource.phase = "climbing" end
            end
            if resource.phase == "mounting" then
                local toward = flat(mount - root.Position)
                resource.command = toward.Magnitude > 0.3 and toward.Unit or (upwards and -normal or normal)
                if now - resource.started > (self.options.ladderMountTimeout or 6) then
                    return false, "Não foi possível alcançar a face da escada"
                end
            elseif resource.phase == "climbing" then
                resource.command = upwards and -normal or normal
                if upwards and root.Position.Y >= goal.Y - self:_RootHeight(pc) - 0.25 then
                    resource.phase, dismountAt = "leaving", now
                    human.Jump, resource.jumped = true, true
                elseif not upwards and root.Position.Y <= goal.Y + 1.2 then
                    resource.phase, dismountAt = "leaving", now
                end
            end
            if resource.phase == "leaving" then
                local toward = flat(goal - root.Position)
                -- Stop pushing into the ladder once the landing is reached.
                resource.command = toward.Magnitude > 0.5 and toward.Unit or Vector3.zero
                faceDirection = toward.Magnitude > 0.5 and toward.Unit or -normal
                if resource.jumped and now - dismountAt > 0.15 then human.Jump = false end
                if now - dismountAt > 5 then return false, "Saída da escada bloqueada; recalculando acesso" end
            end
            if resource.phase == "climbing" then
                local gained = upwards and root.Position.Y-bestHeight or bestHeight-root.Position.Y
                if gained >= .35 then bestHeight,heightAt=root.Position.Y,now
                elseif now-heightAt>3 then return false,"Escada bloqueada; procurando outro acesso" end
            else bestHeight,heightAt=root.Position.Y,now end
            if (root.Position - resource.progress).Magnitude >= 0.2 then
                resource.progress, resource.progressAt = root.Position, now
            elseif now - resource.progressAt > 4 then
                return false, "Escada bloqueada; procurando outro acesso"
            end
            if now - emittedAt >= 0.2 then
                emittedAt = now
                emit("ladder_" .. resource.phase, upwards and "Subindo a escada" or "Descendo a escada")
            end
            task.wait(0.03)
        end
    end
    local ok, success, reason = pcall(run)
    self:_Release(resource)
    if not ok then success, reason = false, "Falha na escada: " .. tostring(success) end
    if not success then
        if reason ~= "Cancelado" and generation == self.generation and alive(pc) then
            self.failedParts[link.part] = os.clock() + (self.options.ladderFailureCooldown or 60)
        end
        self.trace = {stage = "ladder_failed", message = reason, upwards = upwards == true}
    end
    return success, reason
end

return Ladder

end)()
local TerrainPath = (function()
-- Busca local sobre o piso físico quando a malha nativa não une duas áreas.
-- Cada aresta continua sendo validada pelo mesmo voo baixo que executa a rota.
local TerrainPath = {}
TerrainPath.__index = TerrainPath
local UP = Vector3.new(0, 1, 0)
local DIRECTIONS = {{1, 0}, {0, 1}, {-1, 0}, {0, -1},
    {1, 1}, {-1, 1}, {-1, -1}, {1, -1}}

local function finite(value)
    return type(value) == "number" and value == value
        and value > -math.huge and value < math.huge
end

local function validPosition(position)
    if position == nil then return false end
    local ok, valid = pcall(function()
        return finite(position.X) and finite(position.Y) and finite(position.Z)
    end)
    return ok and valid
end

local function key(x, z, floorY)
    return string.format("%d:%d:%d", x, z, math.floor(floorY / 3 + 0.5))
end

local function heapPush(heap, entry)
    local index = #heap + 1
    while index > 1 do
        local parent = math.floor(index / 2)
        local other = heap[parent]
        if other.f < entry.f or (other.f == entry.f and other.h <= entry.h) then break end
        heap[index] = other
        index = parent
    end
    heap[index] = entry
end

local function heapPop(heap)
    local result = heap[1]
    local last = table.remove(heap)
    if #heap > 0 then
        local index = 1
        while index * 2 <= #heap do
            local child = index * 2
            local right = child + 1
            if right <= #heap and (heap[right].f < heap[child].f
                or (heap[right].f == heap[child].f and heap[right].h < heap[child].h)) then
                child = right
            end
            local other = heap[child]
            if last.f < other.f or (last.f == other.f and last.h <= other.h) then break end
            heap[index] = other
            index = child
        end
        heap[index] = last
    end
    return result
end

local function length(origin, points)
    local cost, previous = 0, origin
    for _, point in ipairs(points) do
        cost = cost + (point - previous).Magnitude
        previous = point
    end
    return cost
end

function TerrainPath.create(Global, options, flight)
    return setmetatable({Global = Global, options = options or {}, flight = flight,
        Workspace = game:GetService("Workspace"), trace = {}}, TerrainPath)
end

function TerrainPath:Plan(origin, destination, cancelled, onTrace, connectGoal, budgetSeconds)
    local options = self.options
    local started = os.clock()
    local maxSeconds = math.max(0, tonumber(options.terrainPlanSeconds) or 6)
    if budgetSeconds then maxSeconds=math.min(maxSeconds,math.max(0,budgetSeconds))end
    local maxNodes = math.max(0, math.floor(tonumber(options.terrainMaxNodes) or 1800))
    local cellSize = math.clamp(tonumber(options.terrainCellSize) or 12, 4, 24)
    local goalRadius = math.clamp(tonumber(options.terrainGoalRadius) or 64, 12, 64)
    local nativeBudget = math.max(0, math.min(16, math.floor(tonumber(options.terrainGoalAttempts) or 16)))
    local stats = {nodes = 0, floorQueries = 0, flightCalls = 0,
        nativeCalls = 0, validEdges = 0, frontier = 0, budget = false}
    self.trace = stats
    local function notify(stage)
        stats.seconds = os.clock() - started
        if onTrace then pcall(onTrace, stage, stats) end
    end
    local function stopped()
        return cancelled and cancelled() or false
    end
    local function outOfTime()
        return os.clock() - started >= maxSeconds
    end
    local function cooperativeCancel()
        return stopped() or outOfTime()
    end
    local function done(segment, message)
        stats.found = segment ~= nil
        stats.message = message
        notify("done")
        return segment, message
    end
    if stopped() then return done(nil, "Cancelado") end
    if not validPosition(origin) or not validPosition(destination) or not self.flight then
        return done(nil, "Posição ou voo baixo indisponível para calcular a rota")
    end
    local pc = self.Global.PlayerCharacter
    local model, root = pc and pc.Character, pc and pc.RootPart
    if not model or not root or not root.Parent then
        return done(nil, "Personagem indisponível para calcular a rota")
    end
    local height = tonumber(options.rootHeight) or 3
    if type(self.flight._RootHeight) == "function" then
        height = self.flight:_RootHeight(model, root)
    end
    height = math.clamp(height, 2, 6)
    local clearance = math.clamp(tonumber(options.flightClearance) or 1.5, 0.75, 1.5)
    local parameters = RaycastParams.new()
    parameters.FilterType = Enum.RaycastFilterType.Exclude
    parameters.FilterDescendantsInstances = {model}
    parameters.RespectCanCollide = true
    parameters.CollisionGroup = root.CollisionGroup
    parameters.IgnoreWater = false
    local floorCache, edgeCache = {}, {}
    local function floorAt(x, z, expectedFloor, stepUp)
        stepUp = stepUp or 10
        local cacheKey = string.format("%.3f:%.3f:%d:%.1f", x, z,
            math.floor(expectedFloor / 3 + 0.5), stepUp)
        local cached = floorCache[cacheKey]
        if cached ~= nil then return cached ~= false and cached or nil end
        stats.floorQueries = stats.floorQueries + 1
        local hit = self.Workspace:Raycast(Vector3.new(x, expectedFloor + stepUp, z), -UP * 30, parameters)
        local floor = hit and hit.Normal.Y >= 0.55 and hit.Material ~= Enum.Material.Water
            and hit.Position or nil
        floorCache[cacheKey] = floor or false
        return floor
    end
    -- Começar acima da cabeça em cavernas pode atingir a face superior do
    -- teto. A origem usa a mesma pequena subida da sondagem do voo.
    local initialFloor = floorAt(origin.X, origin.Z, origin.Y - height - clearance, 2.5)
    if not initialFloor then return done(nil, "Não há piso acessível na saída atual da mina") end
    local function flightLeg(from, target)
        if cooperativeCancel() then return nil end
        stats.flightCalls = stats.flightCalls + 1
        local points = self.flight:PlanRoute(from, target, model, root)
        if stopped() or not points or #points == 0 then return nil end
        return {kind = "flight", points = points, destination = target,
            cost = length(from, points)}
    end
    local function finish(node, final)
        local chain, cursor = {}, node
        while cursor.parent do
            table.insert(chain, 1, cursor)
            cursor = cursor.parent
        end
        local points, previous, index = {}, origin, 1
        local function append(additions)
            for _, point in ipairs(additions) do
                if #points == 0 or (points[#points] - point).Magnitude > 0.05 then
                    points[#points + 1] = point
                end
            end
        end
        notify("terrain-smoothing")
        while index <= #chain do
            if stopped() then return done(nil, "Cancelado") end
            local selected, segment = index, chain[index].edge
            -- No máximo doze células por atalho. Se o tempo acabar, conserva
            -- as arestas já validadas em vez de descartar a rota encontrada.
            for candidate = math.min(#chain, index + 11), index + 1, -1 do
                if outOfTime() then break end
                local shortcut = flightLeg(previous, chain[candidate].position)
                if shortcut then selected, segment = candidate, shortcut; break end
            end
            append(segment.points)
            previous = chain[selected].position
            index = selected + 1
            if index % 24 == 0 then task.wait() end
        end
        if stopped() then return done(nil, "Cancelado") end
        if final.kind == "flight" then
            append(final.points)
            return done({kind = "flight", points = points, destination = destination,
                cost = length(origin, points)}, "Rota de voo baixo encontrada")
        end
        local segments = {}
        local cost = 0
        if #points > 0 then
            cost = length(origin, points)
            segments[#segments + 1] = {kind = "flight", points = points,
                destination = node.position, cost = cost}
        end
        segments[#segments + 1] = final
        cost = cost + (tonumber(final.cost) or (destination - node.position).Magnitude)
        return done({kind = "route", segments = segments, destination = destination, cost = cost},
            "Rota de voo baixo e aproximação encontrada")
    end
    local initial = {x = 0, z = 0, position = origin, floorY = initialFloor.Y, g = 0}
    initial.key = key(0, 0, initial.floorY)
    local nodes, closed, heap = {[initial.key] = initial}, {}, {}
    local initialH = (destination - origin).Magnitude
    heapPush(heap, {node = initial, g = 0, h = initialH, f = initialH})
    while #heap > 0 do
        if stopped() then return done(nil, "Cancelado") end
        if outOfTime() or stats.nodes >= maxNodes then
            stats.budget = true
            return done(nil, "Limite de busca da rota atingido; recalculando a saída da mina")
        end
        local entry = heapPop(heap)
        local node = entry.node
        if not closed[node.key] and entry.g == node.g then
            closed[node.key] = true
            stats.nodes = stats.nodes + 1
            local goalDistance = (destination - node.position).Magnitude
            if goalDistance <= goalRadius then
                local final = flightLeg(node.position, destination)
                if final then return finish(node, final) end
                if connectGoal and stats.nativeCalls < nativeBudget and not cooperativeCancel() then
                    stats.nativeCalls = stats.nativeCalls + 1
                    final = connectGoal(node.position, destination, cooperativeCancel)
                    if stopped() then return done(nil, "Cancelado") end
                    if final then return finish(node, final) end
                end
            end
            for _, direction in ipairs(DIRECTIONS) do
                if stopped() then return done(nil, "Cancelado") end
                if outOfTime() then
                    stats.budget = true
                    return done(nil, "Limite de tempo da rota atingido; recalculando a saída da mina")
                end
                local x, z = node.x + direction[1], node.z + direction[2]
                local sampleX, sampleZ = origin.X + x * cellSize, origin.Z + z * cellSize
                local floor = floorAt(sampleX, sampleZ, node.floorY)
                local floors = floor and {floor} or {}
                if floor and floor.Y - node.floorY > 2.5 then
                    -- Um teto/plataforma pode ocultar o piso inferior no raio
                    -- mais alto. Cada andar recebe sua própria chave e ainda
                    -- precisa passar pela validação física do voo baixo.
                    local lower = floorAt(sampleX, sampleZ, node.floorY, 2.5)
                    if lower and math.abs(lower.Y - floor.Y) > 0.1 then
                        floors[#floors + 1] = lower
                    end
                end
                for _, floor in ipairs(floors) do
                    local neighborKey = key(x, z, floor.Y)
                    if not closed[neighborKey] then
                        local position = Vector3.new(floor.X, floor.Y + height + clearance, floor.Z)
                        local cacheKey = node.key .. ">" .. neighborKey
                        local segment = edgeCache[cacheKey]
                        if segment == nil then
                            segment = flightLeg(node.position, position)
                            edgeCache[cacheKey] = segment or false
                        end
                        if segment then
                            local cost = node.g + segment.cost
                            local neighbor = nodes[neighborKey]
                            if not neighbor or cost < neighbor.g then
                                if not neighbor then
                                    neighbor = {x = x, z = z, position = position,
                                        floorY = floor.Y, key = neighborKey}
                                    nodes[neighborKey] = neighbor
                                end
                                neighbor.g, neighbor.parent, neighbor.edge = cost, node, segment
                                local h = (destination - position).Magnitude
                                heapPush(heap, {node = neighbor, g = cost, h = h, f = cost + h})
                                stats.validEdges = stats.validEdges + 1
                            end
                        end
                    end
                end
            end
            stats.frontier = #heap
            if stats.nodes % 24 == 0 then
                notify("terrain-search")
                task.wait()
                if stopped() then return done(nil, "Cancelado") end
            end
        end
    end
    return done(nil, "Nenhuma passagem com piso contínuo foi encontrada até o destino")
end

return TerrainPath

end)()
local RoutePlanner = (function()
-- Planejador sem dependências do jogo. O adaptador confirma os trechos físicos;
-- escadas conhecidas unem áreas que o pathfinding nativo considera separadas.
local Planner = {}
Planner.__index = Planner

local function finite(value)
    return type(value) == "number" and value == value
        and value > -math.huge and value < math.huge
end

local function positionValid(position)
    if position == nil then return false end
    local ok, valid = pcall(function()
        return finite(position.X) and finite(position.Y) and finite(position.Z)
    end)
    return ok and valid
end

local function copy(source)
    local result = {}
    for key, value in pairs(source) do result[key] = value end
    return result
end

local function rounded(value)
    return math.floor(value + 0.5)
end

local function positionKey(position)
    return string.format("%d,%d,%d", rounded(position.X), rounded(position.Y), rounded(position.Z))
end

function Planner.create(options)
    options = options or {}
    return setmetatable({
        options = options,
        clock = options.clock or os.clock,
        cache = {},
        version = 0,
        lastTrace = {},
    }, Planner)
end

function Planner:Invalidate()
    self.cache = {}
    self.version = self.version + 1
end

function Planner:Plan(start, goals, links, cancelled, callbacks)
    callbacks = callbacks or {}
    if not positionValid(start) or type(callbacks.Connect) ~= "function" then
        return {}, "Posição ou adaptador de rotas indisponível"
    end
    local options, clock, version = self.options, self.clock, self.version
    local started = clock()
    local searchStarted = started
    local maxSeconds = math.max(0, tonumber(options.maxSeconds) or 30)
    local maxCalls = math.max(0, math.floor(tonumber(options.maxConnectCalls) or 80))
    local maxNeighbors = math.max(1, math.floor(tonumber(options.maxNeighbors) or 12))
    local maxDistance = math.max(1, tonumber(options.maxConnectDistance) or 3000)
    local maxLinks = math.max(0, math.floor(tonumber(options.maxLinks) or 40))
    local maxPlans = math.max(1, math.floor(tonumber(options.maxPlans) or math.huge))
    local successTTL = math.max(0, tonumber(options.successTTL) or 120)
    local failureTTL = math.max(0, tonumber(options.failureTTL) or 15)
    local stats = {nodes = 0, links = 0, goals = 0, engineCalls = 0,
        cacheHits = 0, cacheFailures = 0, plans = 0, failedEdges = 0, budget = false}
    self.lastTrace = stats
    for key, cached in pairs(self.cache) do
        if cached.expires <= started then self.cache[key] = nil end
    end
    local function trace(stage, values)
        if callbacks.Trace then pcall(callbacks.Trace, stage, values or stats) end
    end
    local function stopped()
        return self.version ~= version or (cancelled and cancelled()) or false
    end
    local function budgetReached()
        return stats.engineCalls >= maxCalls or clock() - searchStarted >= maxSeconds
    end
    local function cooperativeCancel()
        return stopped() or clock() - searchStarted >= maxSeconds
    end
    local function uncertain(message)
        if type(message) ~= "string" then return false end
        local lower = string.lower(message)
        return lower:find("limite", 1, true) or lower:find("tempo esgotado", 1, true)
            or lower:find("timeout", 1, true) or lower:find("cancelado", 1, true)
    end
    local function done(plans, message)
        stats.plans, stats.seconds = #plans, clock() - started
        trace("done", stats)
        return plans, message
    end
    if stopped() then trace("cancelled"); return done({}, "Cancelado") end

    -- O alvo original fica no plano para o chamador poder agrupar seus vários
    -- pontos de aproximação e escolher a entrada com o menor custo confirmado.
    local nodes = {{position = start, kind = "start", group = {}}}
    local goalNodes = {}
    for _, goal in ipairs(goals or {}) do
        if type(goal) == "table" and positionValid(goal.position) then
            local node = {position = goal.position, kind = "goal", goal = goal,
                group = goal.target or goal.key or goal}
            nodes[#nodes + 1] = node
            goalNodes[#goalNodes + 1] = #nodes
        end
    end
    if #goalNodes == 0 then return done({}, "Nenhum destino válido disponível") end
    stats.goals = #goalNodes
    local anchorCount=0
    for _,position in ipairs(callbacks.Anchors or{})do
        if positionValid(position)and anchorCount<90 then
            nodes[#nodes+1]={position=position,kind="anchor",group={}}
            anchorCount=anchorCount+1
        end
    end
    stats.anchors=anchorCount

    -- Prioriza acessos perto do início e das lojas/minérios. O limite impede
    -- transformar todas as escadas do mapa em centenas de consultas nativas.
    local chosenLinks = {}
    local seenLinks = {}
    for _, link in ipairs(links or {}) do
        if type(link) == "table" and positionValid(link.lower) and positionValid(link.upper)
            and not seenLinks[link] then
            -- Faces diferentes da mesma escada podem dar acesso a pisos
            -- diferentes. Conserva essas alternativas; remove so repeticoes.
            seenLinks[link] = true
            local fromStart = math.min((start - link.lower).Magnitude, (start - link.upper).Magnitude)
            local fromGoal = math.huge
            for _, index in ipairs(goalNodes) do
                local position = nodes[index].position
                fromGoal = math.min(fromGoal, (position - link.lower).Magnitude,
                    (position - link.upper).Magnitude)
            end
            chosenLinks[#chosenLinks + 1] = {link = link,
                score = math.min(fromStart, fromGoal), nearStart = fromStart <= 700}
        end
    end
    table.sort(chosenLinks, function(a, b)
        if a.nearStart ~= b.nearStart then return a.nearStart end
        return a.score < b.score
    end)
    local ladderPairs = {}
    for index = 1, math.min(maxLinks, #chosenLinks) do
        local link = chosenLinks[index].link
        local lowerIndex = #nodes + 1
        nodes[lowerIndex] = {position = link.lower, kind = "lower", group = link.part or link}
        nodes[lowerIndex + 1] = {position = link.upper, kind = "upper", group = link.part or link}
        ladderPairs[#ladderPairs + 1] = {lower = lowerIndex, upper = lowerIndex + 1, link = link}
    end
    stats.links, stats.nodes = #ladderPairs, #nodes
    local adjacency = {}
    local ladderNeighbor = {}
    for index = 1, #nodes do adjacency[index] = {} end
    local function addLadder(from, to, link, upwards)
        local suppliedCost = tonumber(link.cost)
        if not finite(suppliedCost) or suppliedCost < 0 then
            suppliedCost = (link.upper - link.lower).Magnitude
        end
        local walkway = link.kind == "walkway"
        local cost = suppliedCost + (walkway and 0 or 8)
        local points
        if walkway then
            points={}
            if upwards then for _,point in ipairs(link.points)do points[#points+1]=point end
            else for index=#link.points,1,-1 do points[#points+1]=link.points[index]end end
        end
        adjacency[from][#adjacency[from] + 1] = {
            from = from, to = to, state = "known", cost = cost,
            segment = {kind = walkway and "walkway" or "ladder", link = link, upwards = upwards,
                destination = nodes[to].position, cost = cost, points=points},
        }
        ladderNeighbor[from] = to
    end
    for _, pair in ipairs(ladderPairs) do
        addLadder(pair.lower, pair.upper, pair.link, true)
        addLadder(pair.upper, pair.lower, pair.link, false)
    end

    -- Vizinhos de grupos distintos primeiro: três pontos de uma única loja
    -- não devem esconder a escada ou outra loja que permite sair da mina.
    for from, node in ipairs(nodes) do
        local candidates = {}
        for to, other in ipairs(nodes) do
            if from ~= to and ladderNeighbor[from] ~= to then
                local distance = (other.position - node.position).Magnitude
                local localConnection=anchorCount==0 or distance<=320
                if distance <= maxDistance and localConnection then
                    candidates[#candidates + 1] = {to = to, distance = distance}
                end
            end
        end
        table.sort(candidates, function(a, b)
            if a.distance ~= b.distance then return a.distance < b.distance end
            return a.to < b.to
        end)
        local picked, groups, count = {}, {}, 0
        local function addPhysical(candidate)
            local to = candidate.to
            picked[to], count = true, count + 1
            local cacheKey = positionKey(node.position) .. ">" .. positionKey(nodes[to].position)
            local cached = self.cache[cacheKey]
            local edge = {from = from, to = to, cost = candidate.distance, state = "unknown", cacheKey = cacheKey}
            if cached and cached.expires > clock() then
                if cached.segment then
                    edge.state, edge.segment, edge.cost = "known", copy(cached.segment),
                        math.max(candidate.distance, cached.cost)
                    edge.segment.cost = edge.cost
                    edge.segment.destination = nodes[to].position
                    stats.cacheHits = stats.cacheHits + 1
                else
                    edge.state = "failed"
                    stats.cacheFailures = stats.cacheFailures + 1
                end
            elseif cached then
                self.cache[cacheKey] = nil
            end
            adjacency[from][#adjacency[from] + 1] = edge
        end
        for _, candidate in ipairs(candidates) do
            local group = nodes[candidate.to].group
            if count < maxNeighbors and not groups[group] then
                groups[group] = true
                addPhysical(candidate)
            end
        end
        for _, candidate in ipairs(candidates) do
            if count >= maxNeighbors then break end
            if not picked[candidate.to] then addPhysical(candidate) end
        end
        -- Uma mina pode ter dezenas de tabuas proximas. Um grafo apenas de
        -- vizinhos locais isolava esse conjunto da loja, sem testar uma aresta.
        -- Mantem destinos e conexoes ao inicio mesmo em conjuntos densos.
        for _, candidate in ipairs(candidates) do
            if not picked[candidate.to] and (from==1 or candidate.to==1 or nodes[candidate.to].kind=="goal") then
                addPhysical(candidate)
            end
        end
        if stopped() then trace("cancelled"); return done({}, "Cancelado") end
    end
    searchStarted=clock()
    stats.constructionSeconds=searchStarted-started
    trace("start", stats)

    -- Trechos ainda não consultados têm a distância reta como limite inferior.
    -- Valida apenas a rota candidata mais barata e recalcula quando uma ligação
    -- falha. Assim não consulta os 12 vizinhos de cada escada antecipadamente.
    local function shortest()
        local distance, previous, visited = {[1] = 0}, {}, {}
        for _ = 1, #nodes do
            local current, best = nil, math.huge
            for index = 1, #nodes do
                local value = distance[index]
                if not visited[index] and value and value < best then current, best = index, value end
            end
            if not current then break end
            visited[current] = true
            for _, edge in ipairs(adjacency[current]) do
                if edge.state ~= "failed" then
                    local value = best + edge.cost
                    if not distance[edge.to] or value < distance[edge.to] then
                        distance[edge.to], previous[edge.to] = value, edge
                    end
                end
            end
        end
        return distance, previous
    end
    local function edgesTo(index, previous)
        local reverse = {}
        while index ~= 1 do
            local edge = previous[index]
            if not edge then return nil end
            reverse[#reverse + 1] = edge
            index = edge.from
            if #reverse > #nodes then return nil end
        end
        local edges = {}
        for edgeIndex = #reverse, 1, -1 do edges[#edges + 1] = reverse[edgeIndex] end
        return edges
    end
    local plans, resolved, pending = {}, {}, nil
    while true do
        if stopped() then trace("cancelled"); return done({}, "Cancelado") end
        local candidate, edges, cheapest
        if pending then
            candidate, edges = pending.candidate, pending.edges
            cheapest = 0
            for _,edge in ipairs(edges)do cheapest=cheapest+edge.cost end
        else
            local distance, previous = shortest()
            cheapest = math.huge
            for _, index in ipairs(goalNodes) do
                if not resolved[index] and distance[index] and distance[index] < cheapest then
                    candidate, cheapest = index, distance[index]
                end
            end
            if candidate then edges=edgesTo(candidate,previous)end
        end
        if not candidate then break end
        if not edges then break end
        local unknown
        for _, edge in ipairs(edges) do if edge.state == "unknown" then unknown = edge; break end end
        if not unknown then
            local goal = nodes[candidate].goal
            local segments = {}
            for _, edge in ipairs(edges) do segments[#segments + 1] = copy(edge.segment) end
            local plan = {goal = goal, key = goal.key, target = goal.target, position = goal.position,
                destination = goal.position, cost = cheapest, segments = segments}
            plans[#plans + 1], resolved[candidate], pending = plan, true, nil
            trace("plan", {goal = goal, cost = cheapest, segments = #segments})
            if #plans >= maxPlans then break end
        else
            if budgetReached() then
                stats.budget = true
                trace("budget", stats)
                break
            end
            local from, to = nodes[unknown.from].position, nodes[unknown.to].position
            stats.engineCalls = stats.engineCalls + 1
            trace("connect", {from = from, to = to, count = stats.engineCalls})
            local ok, segment, message = pcall(callbacks.Connect, from, to, cooperativeCancel)
            if stopped() then trace("cancelled"); return done({}, "Cancelado") end
            if ok and type(segment) == "table" and (segment.kind == "flight" or segment.kind == "path"
                or (segment.kind == "route" and type(segment.segments) == "table" and #segment.segments > 0)) then
                local suppliedCost = tonumber(segment.cost)
                if not finite(suppliedCost) or suppliedCost < 0 then suppliedCost = (to - from).Magnitude end
                -- Uma rota física não pode ser menor do que a distância reta;
                -- esse limite também mantém a busca otimista correta.
                unknown.cost = math.max((to - from).Magnitude, suppliedCost)
                unknown.state, unknown.segment = "known", copy(segment)
                unknown.segment.cost, unknown.segment.destination = unknown.cost, to
                self.cache[unknown.cacheKey] = {segment = copy(unknown.segment), cost = unknown.cost,
                    expires = clock() + successTTL}
                -- Termina de confirmar a passagem escolhida antes de comparar
                -- outras estimativas. Reabrir a busca a cada curva mais longa
                -- fazia centenas de caminhos validos substituirem uns aos outros.
                if options.firstConfirmed then pending={candidate=candidate,edges=edges}end
            else
                pending=nil
                unknown.state = "failed"
                stats.failedEdges = stats.failedEdges + 1
                -- Exceções do adaptador não são provas de ausência de caminho.
                -- Apenas um retorno normal sem trecho alimenta o cache negativo.
                if ok and not uncertain(message) and not cooperativeCancel() then
                    self.cache[unknown.cacheKey] = {expires = clock() + failureTTL}
                elseif ok then stats.budget = true end
                trace("blocked", {from = from, to = to, error = ok and message or tostring(segment)})
            end
        end
    end
    table.sort(plans, function(a, b) return a.cost < b.cost end)
    if stats.budget then return done(plans, "Limite desta busca atingido; destinos restantes ainda não foram verificados") end
    if #plans == 0 then return done(plans, "Nenhuma rota confirmada entre os acessos disponíveis") end
    return done(plans)
end

return Planner

end)()
local Streaming = (function()
-- Solicita regiões pelo método original do LocalPlayer antes de consultar
-- depósitos/caminhos que podem ainda não existir no Workspace deste cliente.
local Streaming = {}
Streaming.__index = Streaming

local function finite(value)
    return type(value) == "number" and value == value
        and value > -math.huge and value < math.huge
end

local function validPosition(position)
    if position == nil then return false end
    local ok, result = pcall(function()
        return finite(position.X) and finite(position.Y) and finite(position.Z)
    end)
    return ok and result
end

local function cell(position)
    return string.format("%d:%d:%d", math.floor(position.X / 64),
        math.floor(position.Y / 64), math.floor(position.Z / 64))
end

function Streaming.create(Global, options)
    options = options or {}
    local playersOK, players = pcall(game.GetService, game, "Players")
    local workspaceOK, workspace = pcall(game.GetService, game, "Workspace")
    return setmetatable({
        Global = Global,
        options = options,
        Players = playersOK and players or nil,
        Workspace = workspaceOK and workspace or nil,
        task = options.streamingTask or task,
        clock = options.streamingClock or os.clock,
        cache = {},
        mineCache = {},
        inflight = {},
        generation = 0,
        lastTrace = {},
    }, Streaming)
end

function Streaming:_Cancelled(generation, cancelled)
    if generation ~= self.generation then return true end
    if cancelled then
        local ok, result = pcall(cancelled)
        if not ok or result then return true end
    end
    return false
end

function Streaming:_Disabled()
    local ok, enabled = pcall(function() return self.Workspace.StreamingEnabled end)
    return ok and enabled == false
end

function Streaming:_HasSurface(position)
    if not self.Workspace or type(self.Workspace.Raycast)~="function"then return false end
    local pc=self.Global and self.Global.PlayerCharacter
    local parameters=RaycastParams.new()
    parameters.FilterType=Enum.RaycastFilterType.Exclude
    parameters.FilterDescendantsInstances=pc and pc.Character and{pc.Character}or{}
    parameters.RespectCanCollide=true
    parameters.CollisionGroup=pc and pc.RootPart and pc.RootPart.CollisionGroup or"Default"
    local ok,hit=pcall(self.Workspace.Raycast,self.Workspace,
        Vector3.new(position.X,position.Y+128,position.Z),Vector3.new(0,-384,0),parameters)
    return ok and hit~=nil and hit.Normal.Y>=.55 and hit.Material~=Enum.Material.Water
end

function Streaming:_Around(position, cancelled, deadline, requireObjects)
    local generation = self.generation
    if self:_Cancelled(generation, cancelled) then return false, "Cancelado" end
    if not validPosition(position) then return false, "Posição de carregamento inválida" end
    if self:_Disabled() then return true, "Streaming desativado", "disabled" end
    -- A resposta de RequestStreamAroundAsync pode atrasar mesmo quando o
    -- piso ja existe. A validacao fisica da rota continua obrigatoria; esta
    -- checagem apenas evita aguardar a rede para cada trecho ja replicado.
    if not requireObjects and self:_HasSurface(position)then return true,"Piso local disponível","present"end
    local now, key = self.clock(), cell(position)
    local cached = self.cache[key]
    if cached and cached > now then return true, "Região carregada recentemente", "cached" end
    self.cache[key] = nil
    local player = self.Players and self.Players.LocalPlayer
    local supported, method = pcall(function() return player and player.RequestStreamAroundAsync end)
    if not supported or type(method) ~= "function" or not self.task
        or type(self.task.spawn) ~= "function" or type(self.task.wait) ~= "function" then
        return false, "Solicitação de regiões indisponível neste cliente"
    end
    deadline = math.min(deadline or now + 4, now + 4)
    if now >= deadline then return false, "Tempo esgotado ao carregar região" end
    local request = self.inflight[key]
    local dispatched = false
    if not request or request.generation ~= generation or request.abandoned then
        request = {done = false, generation = generation}
        self.inflight[key] = request
        dispatched = true
        self.task.spawn(function()
            -- A requisição nativa não pode ser cancelada. A corrotina apenas
            -- registra seu resultado; cache/ações dependem do chamador ativo.
            request.ok, request.error = pcall(method, player, position, 3)
            request.done = true
        end)
    end
    while not request.done do
        if self:_Cancelled(generation, cancelled) then
            if dispatched then request.abandoned = true end
            if self.inflight[key] == request then self.inflight[key] = nil end
            return false, "Cancelado", dispatched and "requested" or "joined"
        end
        local remaining = deadline - self.clock()
        if remaining <= 0 then
            if dispatched then request.abandoned = true end
            if self.inflight[key] == request then self.inflight[key] = nil end
            return false, "Tempo esgotado ao carregar região", dispatched and "requested" or "joined"
        end
        self.task.wait(math.min(0.05, remaining))
    end
    if self.inflight[key] == request then self.inflight[key] = nil end
    if self:_Cancelled(generation, cancelled) then return false, "Cancelado" end
    if self.clock() > deadline then return false, "Tempo esgotado ao carregar região" end
    if not request.ok then return false, "Falha ao carregar região: " .. tostring(request.error),
        dispatched and "requested" or "joined" end
    self.cache[key] = self.clock() + 20
    return true, "Região carregada", dispatched and "requested" or "joined"
end

function Streaming:Around(position, cancelled)
    local ok, message, mode = self:_Around(position, cancelled, self.clock() + 4)
    self.lastTrace = {kind = "around", loaded = ok and 1 or 0, mode = mode, message = message}
    return ok, message
end

function Streaming:Corridor(origin, destination, cancelled)
    local generation, started = self.generation, self.clock()
    local stats = {kind = "corridor", requested = 0, loaded = 0, cached = 0, budget = false}
    self.lastTrace = stats
    if self:_Cancelled(generation, cancelled) then return false, "Cancelado" end
    if not validPosition(origin) or not validPosition(destination) then return false, "Corredor inválido" end
    if self:_Disabled() then return true, "Streaming desativado" end
    local delta = destination - origin
    local length = delta.Magnitude
    if length > (self.options.maxDistance or 3200) then return false, "Região fora do alcance de 3200 studs" end
    local positions = {destination}
    local minimumRadius=128
    pcall(function()minimumRadius=self.Workspace.StreamingMinRadius end)
    local spacing=math.clamp(tonumber(minimumRadius)or 128,96,192)
    if length > spacing then
        for index = 1, 34 do
            local distance = index * spacing
            if distance >= length then break end
            positions[#positions + 1] = origin + delta.Unit * distance
        end
    end
    local deadline, seen, all = started + 10, {}, true
    local lastMessage
    for _, position in ipairs(positions) do
        if self:_Cancelled(generation, cancelled) then return false, "Cancelado" end
        if self.clock() >= deadline then stats.budget = true; all = false; break end
        local key = cell(position)
        if not seen[key] then
            seen[key] = true
            local ok, message, mode = self:_Around(position, function()
                return self:_Cancelled(generation, cancelled)
            end, deadline)
            if self:_Cancelled(generation, cancelled) then return false, "Cancelado" end
            if mode == "requested" then stats.requested = stats.requested + 1 end
            if mode == "cached" then stats.cached = stats.cached + 1 end
            if ok then stats.loaded = stats.loaded + 1 else all, lastMessage = false, message end
        end
    end
    stats.seconds = self.clock() - started
    if stats.budget then return false, "Limite de tempo para carregar o trajeto" end
    return all, lastMessage or "Regiões do trajeto carregadas"
end

function Streaming:Exits(origin,cancelled)
    local generation,started=self.generation,self.clock()
    if not validPosition(origin)then return false,"Posição de mina inválida"end
    if self:_Disabled()then return true end
    local deadline,all,lastMessage=started+6,true,nil
    for _,offset in ipairs({{0,-192},{-192,0},{192,0},{0,192},
        {-192,-192},{192,-192},{-192,192},{192,192}})do
        if self:_Cancelled(generation,cancelled)then return false,"Cancelado"end
        if self.clock()>=deadline then return false,"Carregamento da saída continuará na próxima busca"end
        local ok,message=self:_Around(origin+Vector3.new(offset[1],96,offset[2]),function()
            return self:_Cancelled(generation,cancelled)
        end,deadline)
        if self:_Cancelled(generation,cancelled)then return false,"Cancelado"end
        if not ok then all,lastMessage=false,message end
        if not ok and self.clock()>=deadline then return false,message end
    end
    return all,lastMessage or "Bordas e patamares da mina carregados"
end

function Streaming:Mines(positions, cancelled)
    local generation, started = self.generation, self.clock()
    local stats = {kind = "mines", requested = 0, loaded = 0, cached = 0, budget = false}
    self.lastTrace = stats
    if self:_Cancelled(generation, cancelled) then return false, "Cancelado" end
    if self:_Disabled() then return true, "Streaming desativado" end
    local character = self.Global and self.Global.PlayerCharacter
    local root = character and character.RootPart
    local origin = root and root.Position
    if not validPosition(origin) then return false, "Personagem indisponível para localizar minas" end
    local candidates, seen = {}, {}
    local now = self.clock()
    for key, expires in pairs(self.mineCache) do if expires <= now then self.mineCache[key] = nil end end
    for _, candidate in ipairs(positions or {}) do
        local position = validPosition(candidate) and candidate
            or (type(candidate) == "table" and candidate.position)
        if validPosition(position) then
            local distance, key = (position - origin).Magnitude, cell(position)
            if distance <= (self.options.maxDistance or 3200) and not seen[key] then
                seen[key] = true
                if self.mineCache[key] and self.mineCache[key] > now then
                    stats.cached = stats.cached + 1
                else candidates[#candidates + 1] = {position = position, distance = distance, key = key} end
            end
        end
    end
    table.sort(candidates, function(a,b) return a.distance < b.distance end)
    local deadline, all, lastMessage = started + 10, true, nil
    for index, candidate in ipairs(candidates) do
        if self:_Cancelled(generation, cancelled) then return false, "Cancelado" end
        if stats.requested >= 6 or self.clock() >= deadline then
            stats.budget, stats.remaining, all = true, #candidates - index + 1, false
            break
        end
        local ok, message, mode = self:_Around(candidate.position, function()
            return self:_Cancelled(generation, cancelled)
        end, deadline, true)
        if self:_Cancelled(generation, cancelled) then return false, "Cancelado" end
        if mode == "requested" then stats.requested = stats.requested + 1 end
        if mode == "cached" then stats.cached = stats.cached + 1 end
        if ok then
            self.mineCache[candidate.key] = self.clock() + 90
            stats.loaded = stats.loaded + 1
        else all, lastMessage = false, message end
    end
    stats.seconds = self.clock() - started
    if stats.budget then return false, "Parte das minas será carregada na próxima busca" end
    if #candidates == 0 and stats.cached == 0 then return false, "Nenhuma região de minério no alcance" end
    return all, lastMessage or "Regiões de minério carregadas"
end

function Streaming:Stop()
    self.generation = self.generation + 1
    self.inflight = {}
end

function Streaming:Destroy()
    self:Stop()
    self.cache, self.mineCache = {}, {}
end

return Streaming

end)()
local Passages = (function()
-- Passagens fisicas: portas destrancadas e centros das passarelas existentes.
local Passages = {}
Passages.__index = Passages
local UP = Vector3.new(0, 1, 0)
local STRUCTURES = {QuarryRamp = true, QuarryIncline = true, Scaffolding = true, Footbridge = true}

function Passages.create(Global, options)
    return setmetatable({Global = Global, options = options or {}, Workspace = game:GetService("Workspace"),
        scanned = -math.huge, wood = {}}, Passages)
end

function Passages:DoorAt(part)
    local registry = self.Global.ClientDoors
    if not registry or type(registry.GetDoor) ~= "function" then return nil end
    local ancestor = part
    while ancestor and ancestor ~= self.Workspace do
        local ok, door = pcall(registry.GetDoor, registry, ancestor)
        if ok and door then return door end
        ancestor = ancestor.Parent
    end
end

function Passages:DoorOnSegment(origin, destination)
    local pc = self.Global.PlayerCharacter
    if not pc or not pc.RootPart then return nil end
    local delta = destination - origin
    if delta.Magnitude < 0.01 then return nil end
    local parameters = self:_Parameters()
    local root = pc.RootPart
    local hit = self.Workspace:Blockcast(CFrame.new(origin),
        Vector3.new(math.max(root.Size.X, 2), 2, math.max(root.Size.Z, 1)), delta, parameters)
    return hit and self:DoorAt(hit.Instance) or nil
end

function Passages:DoorNear(position,radius)
    local registry=self.Global.ClientDoors
    if not registry or type(registry.GetDoors)~="function"then return nil end
    local ok,doors=pcall(registry.GetDoors,registry)
    if not ok then return nil end
    for model,door in pairs(doors)do
        local part=door.doorpart or model.PrimaryPart
        if model.Parent and part and door.Locked==false
            and math.abs(part.Position.Y-position.Y)<8
            and(part.Position-position).Magnitude<=(radius or 12)then return door end
    end
end

function Passages:DoorModifiers(origin, destination)
    local registry = self.Global.ClientDoors
    if not registry or type(registry.GetDoors) ~= "function" then return {} end
    local ok, doors = pcall(registry.GetDoors, registry)
    if not ok then return {} end
    local modifiers, seen = {}, {}
    local delta = destination - origin
    for model, door in pairs(doors) do
        local leaf = door.doorpart or model.PrimaryPart
        if model.Parent and leaf and door.Locked == false and model:GetAttribute("Locked") ~= true then
            local alpha = delta.Magnitude > 0.01 and math.clamp((leaf.Position-origin):Dot(delta)/delta:Dot(delta), 0, 1) or 0
            local distance = (leaf.Position - (origin + delta * alpha)).Magnitude
            if distance <= 90 then
                for _, part in ipairs(model:GetDescendants()) do
                    if part:IsA("BasePart") and part.CanCollide and not seen[part] then
                        seen[part] = true
                        local modifier = Instance.new("PathfindingModifier")
                        local created = pcall(function()
                            modifier.Name = "TWWOpenableDoorPath"
                            modifier.Label = "TWWOpenableDoor"
                            modifier.PassThrough = true
                            modifier.Parent = part
                        end)
                        if created then modifiers[#modifiers+1] = modifier else modifier:Destroy() end
                    end
                end
            end
        end
    end
    return modifiers
end

function Passages:_Parameters()
    local pc = self.Global.PlayerCharacter
    local parameters = RaycastParams.new()
    parameters.FilterType = Enum.RaycastFilterType.Exclude
    parameters.FilterDescendantsInstances = pc and pc.Character and {pc.Character} or {}
    parameters.RespectCanCollide = true
    parameters.CollisionGroup = pc and pc.RootPart and pc.RootPart.CollisionGroup or "Default"
    return parameters
end

function Passages:_Scan()
    if os.clock() - self.scanned < 10 then return end
    self.wood,self.woodGroups = {},{}
    local geometry = self.Workspace:FindFirstChild("WORKSPACE_Geometry")
    local seen = {}
    for _, model in ipairs(geometry and geometry:GetDescendants() or {}) do
        if model:IsA("Model") and STRUCTURES[model.Name] then
            for _, part in ipairs(model:GetDescendants()) do
                if part:IsA("BasePart") and part.CanCollide and not seen[part]
                    and part.CFrame.UpVector.Y >= 0.55 and math.max(part.Size.X,part.Size.Z) >= 6
                    and math.min(part.Size.X,part.Size.Z) >= 2.1
                    and part.Size.Y <= math.min(part.Size.X,part.Size.Z) * 0.8 then
                    seen[part] = true
                    self.wood[#self.wood+1] = part
                    self.woodGroups[part]=model
                end
            end
        end
    end
    self.scanned = os.clock()
end

function Passages:NeedsExitStreaming(position)
    self:_Scan()
    for _,part in ipairs(self.wood)do
        local group=self.woodGroups[part]
        if part.Parent and group and group.Name~="Footbridge"and(part.Position-position).Magnitude<350 then
            return true
        end
    end
    return false
end

function Passages:WoodLinks(origin, goals, height, cancelled)
    self:_Scan()
    local pc = self.Global.PlayerCharacter
    local root = pc and pc.RootPart
    if not root then return {} end
    local parameters, candidates = self:_Parameters(), {}
    for _, part in ipairs(self.wood) do
        if part.Parent then
            local distance = (part.Position-origin).Magnitude
            for _, goal in ipairs(goals or {}) do distance = math.min(distance,(part.Position-goal.position).Magnitude) end
            if distance <= 500 then candidates[#candidates+1] = {part=part,distance=distance} end
        end
    end
    table.sort(candidates,function(a,b)return a.distance<b.distance end)
    local links,groups = {},{}
    for index, candidate in ipairs(candidates) do
        if index > 72 or (cancelled and cancelled()) then break end
        local part, points, cost = candidate.part, {}, 0
        local group=self.woodGroups[part]or part
        local level=math.floor(part.Position.Y/8+.5)
        groups[group]=groups[group]or{}
        if (groups[group][level]or 0)<2 then
        local frame,size = part.CFrame,part.Size
        local alongX = size.X >= size.Z
        local length = alongX and size.X or size.Z
        local reach = length/2 - 1.3
        local half = size/2
        local vertical = math.abs(frame.RightVector.Y)*half.X + math.abs(frame.UpVector.Y)*half.Y
            + math.abs(frame.LookVector.Y)*half.Z
        local steps = math.max(2, math.ceil(reach*2/4))
        local clear = true
        for step = 0, steps do
            local offset = -reach + reach*2*step/steps
            local sample = frame:PointToWorldSpace(alongX and Vector3.new(offset,0,0) or Vector3.new(0,0,offset))
            local hit = self.Workspace:Raycast(Vector3.new(sample.X,frame.Position.Y+vertical+3,sample.Z),
                -UP*(vertical*2+6),parameters)
            if not hit or hit.Instance ~= part or hit.Normal.Y < 0.55 then clear=false;break end
            local point = hit.Position+UP*height
            local previous = points[#points]
            if previous then
                local delta = point-previous
                local obstruction = self.Workspace:Blockcast(CFrame.new(previous),
                    Vector3.new(math.max(root.Size.X,2.05),2,math.max(root.Size.Z,1.1)),delta,parameters)
                local head = self.Workspace:Raycast(previous+UP*1.8,delta,parameters)
                if obstruction or head then clear=false;break end
                cost=cost+delta.Magnitude
            end
            points[#points+1]=point
        end
        if clear and #points>=2 then
            links[#links+1]={kind="walkway",part=part,points=points,lower=points[1],upper=points[#points],cost=cost}
            groups[group][level]=(groups[group][level]or 0)+1
        end
        end
        if index%16==0 then task.wait() end
    end
    return links
end

return Passages

end)()
local Navigation = (function()
-- Voo baixo acompanhando o piso e caminhos locais com colisao.
local Navigation = {}
Navigation.__index = Navigation

local UP = Vector3.new(0, 1, 0)
local ANGLES = { 0, 45, -45, 90, -90, 135, -135, 180 }
local MAX_PATH_DISTANCE = 3000

local function horizontal(vector)
    return Vector3.new(vector.X, 0, vector.Z)
end

local function disconnect(connection)
    if connection then connection:Disconnect() end
end

function Navigation.create(Global, options, Flight, RoutePlanner, Ladder, TerrainPath, Streaming, Passages)
    assert(type(Global) == "table", "Global do jogo indisponível")
    local self = setmetatable({
        Global = Global,
        options = options or {},
        flight = Flight and Flight.create(Global, options),
        Workspace = game:GetService("Workspace"),
        PathfindingService = game:GetService("PathfindingService"),
        RunService = game:GetService("RunService"),
        UserInputService = game:GetService("UserInputService"),
        generation = 0,
        active = nil,
        trace = {stage = "idle", started = os.clock(), elapsed = 0},
    }, Navigation)
    self.planner = RoutePlanner and RoutePlanner.create(options)
    self.ladder = Ladder and Ladder.create(Global, options)
    self.terrain = TerrainPath and TerrainPath.create(Global, options, self.flight)
    self.streaming = Streaming and Streaming.create(Global, options)
    self.passages = Passages and Passages.create(Global, options)
    self.prepared = setmetatable({}, {__mode = "k"})
    return self
end

function Navigation:_Trace(stage, values, generation)
    if generation and generation ~= self.generation then return end
    local trace = self.trace
    if stage then trace.stage = stage end
    trace.elapsed = os.clock() - trace.started
    for key, value in pairs(values or {}) do
        if typeof(value) == "Vector3" then value = tostring(value)
        elseif typeof(value) == "Instance" then value = value:GetFullName()
        elseif key == "goal" and type(value) == "table" then value = tostring(value.key) end
        trace[key] = value
    end
    local message
    if stage == "planning_exits" then message = "Calculando saída da mina e caminho até o armazém"
    elseif stage == "loading_exits" then message = "Carregando bordas e patamares da mina"
    elseif stage == "connect" then message = "Verificando rotas: " .. tostring(trace.count or 0) .. " trechos"
    elseif stage == "walking" then message = "Seguindo o caminho até o destino"
    elseif stage == "flying" then message = "Voando baixo até o destino"
    elseif stage == "replanning" then message = "Ajustando o caminho a partir da posição atual"
    elseif stage == "terrain-search" then message = "Buscando passagem pelo terreno: " .. tostring(trace.nodes or 0) .. " pontos"
    elseif stage == "unstuck_jump" then message = "Pulando para liberar o caminho"
    elseif stage == "door_crossing" then message = "Passando pela porta"
    elseif stage == "wooden_walkway" then message = "Seguindo a passagem de madeira"
    elseif stage and stage:match("^ladder_") then message = trace.message end
    if message and self.options.onNavigationStatus and
        (stage ~= self.lastStatusStage or os.clock() - (self.lastStatusAt or 0) > 0.5) then
        self.lastStatusStage, self.lastStatusAt = stage, os.clock()
        pcall(self.options.onNavigationStatus, message)
    end
end

function Navigation:_Character()
    local character = self.Global.PlayerCharacter
    local root = character and character.RootPart
    local human = character and character.Human
    if not character or not character.Character or not root or not root.Parent
        or not human or not human.Parent or human.Health <= 0 then
        return nil, nil, nil
    end
    return character.Character, root, human
end

function Navigation:_Cancelled(generation, cancelled)
    if generation ~= self.generation then return true end
    if cancelled then
        local ok, result = pcall(cancelled)
        if not ok or result then return true end
    end
    return false
end

function Navigation:_ReleaseSprint(resource)
    local character = resource.sprintCharacter
    if not character then return end
    local restore = resource.sprintBefore
    resource.sprintCharacter, resource.sprintBefore = nil, nil
    -- Respect a Shift key the player is still holding when automatic walking ends.
    local ok, held = pcall(function()
        return self.UserInputService:IsKeyDown(Enum.KeyCode.LeftShift)
    end)
    if ok then restore = held end
    character.IsSprintButtonDown = restore
end

function Navigation:_UpdateSprint(resource, moving)
    local character = self.Global.PlayerCharacter
    local human = character and character.Human
    local allowed = moving and not resource.closed and character and human
        and human.Parent and human.Health > 0 and not human.PlatformStand
        and not character.IsDead and not character.Climbing
        and not self.options.flightActive and not self.options.ladderActive
    if allowed and type(character.IsRagdolled) == "function" then
        local ok, fallen = pcall(character.IsRagdolled, character)
        allowed = ok and not fallen
    end
    if not allowed then self:_ReleaseSprint(resource); return end
    if resource.sprintCharacter ~= character then
        self:_ReleaseSprint(resource)
        resource.sprintCharacter = character
        resource.sprintBefore = character.IsSprintButtonDown
    end
    -- This is the same input flag assigned by the game's Shift/Sprint callback.
    -- The game keeps control of speed, animations and restrictions on sprinting.
    character.IsSprintButtonDown = true
end

function Navigation:_ClearDrive(resource)
    if not resource then return end
    self:_ReleaseSprint(resource)
    local name, human = resource.driveName, resource.driveHuman
    resource.driveName, resource.driveHuman = nil, nil
    if name then self.RunService:UnbindFromRenderStep(name) end
    if human and human.Parent then
        pcall(function() human:Move(Vector3.zero, false) end)
    end
    if resource.restoreWalkingFacing then
        pcall(resource.restoreWalkingFacing)
        resource.restoreWalkingFacing = nil
    end
    if resource.jumpHuman then
        pcall(function() resource.jumpHuman.Jump = resource.jumpBefore end)
        resource.jumpHuman, resource.jumpUntil, resource.jumpBefore = nil, nil, nil
    end
end

function Navigation:_UpdateJump(resource)
    local human = resource.jumpHuman
    if not human then return end
    if human.Parent and not resource.closed and os.clock() < resource.jumpUntil then
        human.Jump = true
    else
        pcall(function() human.Jump = resource.jumpBefore end)
        resource.jumpHuman, resource.jumpUntil, resource.jumpBefore = nil, nil, nil
    end
end

function Navigation:_RequestJump(resource, generation, cancelled)
    if self:_Cancelled(generation, cancelled) or os.clock() < (self.nextUnstuckJump or 0) then return false end
    local character, root, human = self:_Character()
    local pc = self.Global.PlayerCharacter
    if resource.allowJump == false or not root or human.PlatformStand or self.options.flightActive or self.options.ladderActive
        or pc.Climbing or human.FloorMaterial == Enum.Material.Air then return false end
    if type(pc.IsRagdolled) == "function" then
        local ok, fallen = pcall(pc.IsRagdolled, pc)
        if not ok or fallen then return false end
    end
    self.nextUnstuckJump = os.clock() + 2
    resource.jumpBefore, resource.jumpHuman = human.Jump, human
    resource.jumpUntil = os.clock() + 0.2
    resource.jumpCount = (resource.jumpCount or 0) + 1
    self:_UpdateJump(resource)
    self:_Trace("unstuck_jump", {jumpCount = resource.jumpCount}, generation)
    return true
end

function Navigation:_Release(resource)
    if not resource or resource.closed then return end
    resource.closed = true
    self:_ClearDrive(resource)
    if resource.restoreDoorFacing then pcall(resource.restoreDoorFacing); resource.restoreDoorFacing=nil end
    disconnect(resource.moveConnection)
    disconnect(resource.blockedConnection)
    resource.moveConnection = nil
    resource.blockedConnection = nil
    if resource.path then
        pcall(function() resource.path:Destroy() end)
        resource.path = nil
    end
    for _, modifier in ipairs(resource.doorModifiers or {}) do pcall(function() modifier:Destroy() end) end
    resource.doorModifiers = nil
    if self.active == resource then self.active = nil end
end

function Navigation:_Halt(generation)
    if generation and generation ~= self.generation then return end
    local _, root, human = self:_Character()
    if root and human then
        human:MoveTo(root.Position)
        human:Move(Vector3.zero, false)
    end
end

function Navigation:Stop()
    self.approachCenter,self.approachRadius=nil,nil
    self.generation = self.generation + 1
    self:_Release(self.active)
    if self.flight then self.flight:Stop() end
    if self.ladder then self.ladder:Stop() end
    if self.streaming then self.streaming:Stop() end
    self:_Halt()
    self:_Trace("stopped")
end

function Navigation:_Begin()
    self:Stop()
    self.haltReason = nil
    self.recoveryReason = nil
    self.trace = {stage = "starting", started = os.clock(), elapsed = 0,
        generation = self.generation}
    return self.generation
end

function Navigation:_RootHeight(character, root, human)
    if self.options.rootHeight then return self.options.rootHeight end
    local height = human.HipHeight + root.Size.Y / 2
    if human.RigType == Enum.HumanoidRigType.R6 then
        local leg = character:FindFirstChild("Left Leg")
            or character:FindFirstChild("Right Leg")
        height = height + (leg and leg:IsA("BasePart") and leg.Size.Y or 2)
    end
    return math.clamp(height, 2, 6)
end

function Navigation:_AtApproach()
    if not self.approachCenter or not self.approachRadius then return false end
    local _,root=self:_Character()
    if not root then return false end
    local delta=root.Position-self.approachCenter
    return horizontal(delta).Magnitude<=self.approachRadius and math.abs(delta.Y)<=4
end

function Navigation:_Near(root, position, tolerance, verticalTolerance, walkOnly)
    local delta = root.Position - position
    if self.flight and not walkOnly then
        -- O destino usa altura de repouso; o voo chega um pouco acima dele.
        -- Aceita ambas as alturas sem exigir que o personagem raspe no piso.
        local clearance = math.clamp(tonumber(self.options.flightClearance) or 1.5, 0.5, 3)
        return horizontal(delta).Magnitude <= tolerance
            and delta.Y >= -tolerance and delta.Y <= clearance + tolerance
    end
    return horizontal(delta).Magnitude <= tolerance
        and math.abs(delta.Y) <= (verticalTolerance or 5)
end

function Navigation:_Waypoint(resource, position, action, generation, cancelled, tolerance)
    if self:_Cancelled(generation, cancelled) then return false, "Cancelado" end
    local character, root, human = self:_Character()
    if not root then return false, "Personagem indisponível" end
    local function reached()
        if self:_AtApproach()then return true end
        if self:_Near(root, position, tolerance, nil, resource.walkOnly)then return true end
        -- Em descidas, a malha pode colocar o ponto no piso abaixo da borda.
        -- Avanca para o proximo ponto ao atingir X/Z; parar ali impedia os
        -- pes de sairem da borda. A chegada final conserva a verificacao Y.
        local delta=root.Position-position
        return resource.pathIntermediate and resource.walkOnly and delta.Y>0 and delta.Y<=24
            and horizontal(delta).Magnitude<=tolerance
    end
    if reached() then return true end
    if self.flight and not resource.walkOnly then
        local ok, message, terminal = self.flight:MoveTo(position, function()
            return self:_Cancelled(generation, cancelled)
        end, function(data)
            self:_Trace(data.stage, {targetSpeed = data.targetSpeed, speed = data.actualSpeed,
                waypointDistance = data.distance, waypointIndex = data.waypointIndex,
                message = data.message}, generation)
        end, tolerance)
        if terminal then self.haltReason = message end
        self.recoveryReason = self.flight.trace.recovery
        return ok, message
    end
    self:_Trace("walking", {waypointPosition = tostring(position),
        waypointIndex = resource.waypointIndex}, generation)

    self:_ClearDrive(resource)
    -- Face the route while walking. Looking back at the last ore can make the
    -- game's custom ladder detection grab a ladder beside a wooden walkway.
    local pc = self.Global.PlayerCharacter
    if not resource.restoreDoorFacing then
        local facing, autoRotate = pc.FacingMouse, human.AutoRotate
        resource.restoreWalkingFacing = function()
            if self.Global.PlayerCharacter == pc and pc.Character == character and human.Parent then
                human.AutoRotate = autoRotate
                if type(pc.FaceMouse) == "function" then pc:FaceMouse(facing) end
            end
        end
        if type(pc.FaceMouse) == "function" then pc:FaceMouse(false) end
        human.AutoRotate = true
    end
    if action == Enum.PathWaypointAction.Jump then human.Jump = true end
    -- Preserva WalkToPoint para diagnóstico. O controle do jogo cancela MoveTo;
    -- Move após a entrada mantém a caminhada com a velocidade normal do jogo.
    human:MoveTo(position)
    resource.driveName = "TWWMinerDrive_" .. tostring(resource)
    resource.driveHuman = human
    self.RunService:BindToRenderStep(resource.driveName, Enum.RenderPriority.Input.Value + 10, function()
        if resource.closed or self:_Cancelled(generation, cancelled) then
            self:_ClearDrive(resource)
            return
        end
        local currentCharacter, currentRoot, currentHuman = self:_Character()
        if currentCharacter ~= character or currentRoot ~= root or currentHuman ~= human then
            self:_ClearDrive(resource)
            return
        end
        local delta = horizontal(position - root.Position)
        local moving = delta.Magnitude > tolerance
        human:Move(moving and delta.Unit or Vector3.zero, false)
        self:_UpdateSprint(resource, moving)
        self:_UpdateJump(resource)
    end)

    local distance = (root.Position - position).Magnitude
    local timeout = math.clamp(distance / math.max(human.WalkSpeed, 1) + 3,
        3, self.options.waypointTimeout or 7)
    local walkingStarted = os.clock()
    local deadline = walkingStarted + timeout
    resource.motionAnchor = resource.motionAnchor or root.Position
    resource.motionAt = resource.motionAt or os.clock()
    local success, reason = false, "Tempo esgotado no caminho"
    repeat
        if self:_Cancelled(generation, cancelled) then
            reason = "Cancelado"
            break
        end
        local currentCharacter, currentRoot, currentHuman = self:_Character()
        if currentCharacter ~= character or currentRoot ~= root or currentHuman ~= human then
            reason = "Personagem mudou durante o caminho"
            break
        end
        if resource.blocked then
            reason = "Caminho bloqueado"
            break
        end
        if not self.options.ladderActive and self.ladder and self.ladder.Escape
            and (pc.Climbing or pc.CurrentLadderMagnetized) then
            self:_ClearDrive(resource)
            self:_Trace("ladder_escape", {message = "Leaving an unintended ladder; replanning the route"}, generation)
            local escaped, escapeError = self.ladder:Escape(function()
                return self:_Cancelled(generation, cancelled)
            end, function(data) self:_Trace(data.stage, {message=data.message}, generation) end)
            reason = escaped and "Left the ladder; replanning the route" or escapeError
            break
        end
        if reached() then
            success = true
            break
        end
        self:_UpdateJump(resource)
        if os.clock() - resource.motionAt >= 1.25 then
            local displacement = horizontal(root.Position - resource.motionAnchor).Magnitude
            if displacement < 1.4 then
                if self:_RequestJump(resource, generation, cancelled) then
                    deadline = math.min(deadline + 0.7, walkingStarted + timeout + 2)
                end
            end
            resource.motionAnchor, resource.motionAt = root.Position, os.clock()
        end
        -- Move cancela MoveTo e pode disparar MoveToFinished(false).
        -- A posição, o bloqueio do path e o timeout confirmam este waypoint.
        self:_Trace(nil, {moveDirection = tostring(human.MoveDirection),
            speed = horizontal(root.AssemblyLinearVelocity).Magnitude,
            walkSpeed = human.WalkSpeed,
            waypointDistance = horizontal(position - root.Position).Magnitude}, generation)
        task.wait(0.05)
    until os.clock() >= deadline
    self:_ClearDrive(resource)
    self:_Trace(success and "waypoint_reached" or "waypoint_failed",
        {message = success and "Ponto alcançado" or reason}, generation)
    return success, reason
end

function Navigation:_Compute(resource, startPosition, destination, generation, cancelled)
    -- O alcance da rotina pode superar o limite de uma busca do motor.
    -- A amostragem de piso permite um corredor direto ate 3200 studs;
    -- cada busca do motor continua limitada ao alcance que ele aceita.
    if (destination - startPosition).Magnitude > MAX_PATH_DISTANCE then
        local message = "Rota bloqueada além do alcance de uma busca de caminho"
        self:_Trace("compute_failed", {pathResult = "TooFar", message = message}, generation)
        return false, message
    end
    if self.passages then
        resource.doorModifiers = self.passages:DoorModifiers(startPosition,destination)
        if #resource.doorModifiers>0 then task.wait() end
        if self:_Cancelled(generation,cancelled)then return false,"Cancelado" end
    end
    self:_Trace("computing", {destination = tostring(destination), pathResult = "Pending"}, generation)
    local finished, computed, computeError = false, false, nil
    local path = resource.path
    task.spawn(function()
        computed, computeError = pcall(function()
            path:ComputeAsync(startPosition, destination)
        end)
        finished = true
    end)
    local deadline = os.clock() + (self.options.computeTimeout or 10)
    while not finished do
        if self:_Cancelled(generation, cancelled) then return false, "Cancelado" end
        if os.clock() >= deadline then
            self:_Trace("compute_failed", {pathResult = "Timeout"}, generation)
            return false, "Tempo esgotado ao calcular caminho"
        end
        self:_Trace(nil, nil, generation)
        task.wait(0.05)
    end
    if self:_Cancelled(generation, cancelled) then return false, "Cancelado" end
    if not computed then
        self:_Trace("compute_failed", {pathResult = "Error", message = tostring(computeError)}, generation)
        return false, "Falha ao calcular caminho: " .. tostring(computeError)
    end
    if path.Status ~= Enum.PathStatus.Success then
        self:_Trace("compute_failed", {pathResult = tostring(path.Status)}, generation)
        return false, "Nenhum caminho caminhável até o destino"
    end
    self:_Trace("computed", {pathResult = tostring(path.Status)}, generation)
    return true
end

function Navigation:_CreatePath(character, root, human)
    return self.PathfindingService:CreatePath({
        AgentRadius = self.options.agentRadius or math.clamp(math.max(root.Size.X,root.Size.Z)/2+0.15,1.05,1.4),
        AgentHeight = self.options.agentHeight
            or math.max(5, self:_RootHeight(character, root, human)+root.Size.Y/2+1.1),
        AgentCanJump = true,
        AgentCanClimb = false,
        WaypointSpacing = 4,
    })
end

function Navigation:_FlyRoute(resource, route, routeIndices, generation, cancelled, tolerance)
    local ok, message, terminal = self.flight:MoveTo(route, function()
        return resource.blocked or self:_Cancelled(generation, cancelled)
    end, function(data)
        local index = data.requestedWaypointIndex or data.waypointIndex or 1
        resource.waypointIndex = routeIndices and routeIndices[index] or index
        self:_Trace(data.stage, {targetSpeed = data.targetSpeed, speed = data.actualSpeed,
            waypointDistance = data.distance, waypointIndex = resource.waypointIndex,
            message = data.message}, generation)
    end, tolerance)
    if terminal then self.haltReason = message end
    self.recoveryReason = self.flight.trace.recovery
    local failure = type(message) == "string" and string.lower(message) or ""
    if not ok and not terminal and not self.recoveryReason
        and (failure:find("obst", 1, true) or failure:find("bloque", 1, true)
            or failure:find("progresso", 1, true)) then
        -- O voo ja liberou suas forcas. Espera um instante para os pes tocarem
        -- o piso antes de pedir um pulo normal, e entao recalcula o percurso.
        local settle = os.clock() + 0.3
        repeat
            if self:_Cancelled(generation, cancelled) then return false, "Cancelado" end
            local _, _, human = self:_Character()
            if not human or human.FloorMaterial ~= Enum.Material.Air then break end
            task.wait(0.03)
        until os.clock() >= settle
        if self:_RequestJump(resource, generation, cancelled) then
            local release = os.clock() + 0.22
            repeat
                if self:_Cancelled(generation, cancelled) then return false, "Cancelado" end
                self:_UpdateJump(resource)
                task.wait(0.03)
            until os.clock() >= release
            self:_UpdateJump(resource)
        end
    end
    return ok, message
end

function Navigation:_FollowPath(resource, waypoints, position, generation, cancelled, tolerance)
    local character, root, human = self:_Character()
    if not root then return false, "Personagem indisponível" end
    local rootHeight = self:_RootHeight(character, root, human)
    local route, routeIndices,walkingFallback = {}, {}, {}
    local previous = root.Position
    local function flush()
        if self:_AtApproach()then route,routeIndices,walkingFallback={},{},{};return true end
        if #route == 0 then return true end
        local ok, message = self:_FlyRoute(resource, route, routeIndices,
            generation, cancelled, tolerance)
        -- A rota nativa continua util se um degrau ou uma borda recusar o
        -- voo. Conclui os waypoints restantes caminhando, sem reiniciar
        -- toda a busca nem voltar aos pontos que ja foram ultrapassados.
        if not ok and not self.haltReason and not self.recoveryReason
            and not self:_Cancelled(generation,cancelled)then
            local fromIndex=resource.waypointIndex or 1
            resource.walkOnly=true
            for _,entry in ipairs(walkingFallback)do
                if entry.index>=fromIndex then
                    local _,currentRoot=self:_Character()
                    local nearby=self.passages and self.passages.DoorNear and currentRoot
                        and(self.passages:DoorNear(currentRoot.Position)or self.passages:DoorNear(entry.position))
                    resource.allowJump=not nearby
                    resource.waypointIndex=entry.index
                    resource.pathIntermediate=entry.index<#waypoints+1
                    ok,message=self:_Waypoint(resource,entry.position,not nearby and entry.action or nil,
                        generation,cancelled,tolerance)
                    if not ok then break end
                end
            end
            resource.walkOnly=false;resource.allowJump=nil;resource.pathIntermediate=nil
        end
        route, routeIndices = {}, {}
        walkingFallback={}
        local model, currentRoot = self:_Character()
        if model ~= character or not currentRoot then
            return false, "Personagem mudou durante o caminho"
        end
        previous = currentRoot.Position
        return ok, message
    end
    local function follow(point, action, index, label)
        if self:_Cancelled(generation, cancelled) then return false, "Cancelado" end
        if self:_AtApproach()then return true end
        if resource.blocked then return false, "Caminho bloqueado" end
        local door = self.passages and self.passages:DoorOnSegment(previous,point)
        if door and door.Locked then return false,"Porta trancada; procurando outra passagem" end
        local nearby=self.passages and self.passages.DoorNear
            and(self.passages:DoorNear(previous)or self.passages:DoorNear(point))
        local crossing = door ~= nil or label == "TWWOpenableDoor"or nearby~=nil and nearby~=false
        local planned, walk = nil, crossing or not self.flight or action == Enum.PathWaypointAction.Jump
        if not walk then
            -- Cada trecho deve ter piso continuo e folga pequena. A altura
            -- do waypoint nunca autoriza subir por cima de um teto ou muro.
            planned = self.flight:PlanRoute(previous, point, character, root)
            if not planned then walk = true end
        end
        if walk then
            local ok, message = flush()
            if not ok then return false, message end
            -- Portas e degraus continuam fisicos. O caminho normal do jogo
            -- atravessa a entrada e executa saltos onde o path os solicita.
            resource.waypointIndex = index
            resource.walkOnly = true
            resource.pathIntermediate=index<#waypoints+1
            if crossing then
                self:_Trace("door_crossing",{},generation)
                resource.allowJump = false
                action = nil
                local pc = self.Global.PlayerCharacter
                local originalFacing, originalRotate = pc.FacingMouse,human.AutoRotate
                local restored=false
                resource.restoreDoorFacing=function()
                    if restored then return end;restored=true
                    if pc.Character==character and human.Parent and human.Health>0 then
                        human.AutoRotate=originalRotate
                        if type(pc.FaceMouse)=="function"then pc:FaceMouse(originalFacing)end
                    end
                end
                if type(pc.FaceMouse)=="function"then pc:FaceMouse(false)end
                human.AutoRotate=true
            end
            ok, message = self:_Waypoint(resource, point, action,
                generation, cancelled, tolerance)
            if resource.restoreDoorFacing then resource.restoreDoorFacing();resource.restoreDoorFacing=nil end
            resource.allowJump=nil
            resource.walkOnly = false
            resource.pathIntermediate=nil
            local _, currentRoot = self:_Character()
            if currentRoot then previous = currentRoot.Position end
            return ok, message
        end
        for _, flightPoint in ipairs(planned) do
            route[#route + 1] = flightPoint
            routeIndices[#routeIndices + 1] = index
        end
        walkingFallback[#walkingFallback+1]={position=point,action=action,index=index}
        previous = planned[#planned] or previous
        return true
    end
    for index, waypoint in ipairs(waypoints) do
        local point = waypoint.Position + UP * rootHeight
        local ok, message = follow(point, waypoint.Action, index, waypoint.Label)
        if not ok then return false, message end
    end
    -- O ultimo ponto continua na altura do piso do destino. Flight projeta
    -- a folga acima dele; o Humanoid pode pousar ao fim do deslocamento.
    local ok, message = follow(position, nil, #waypoints + 1)
    if not ok then return false, message end
    return flush()
end

local function routeCost(origin, points, destination)
    local length, previous = 0, origin
    for _, point in ipairs(points) do
        local position = typeof(point) == "Vector3" and point or point.Position
        length = length + (position - previous).Magnitude
        previous = position
    end
    return length + (destination - previous).Magnitude
end

function Navigation:_NativeConnection(origin, destination, cancelled, generation)
    if self:_Cancelled(generation, cancelled) then return nil, "Cancelado" end
    local character, root, human = self:_Character()
    if not root then return nil, "Personagem indisponível" end
    if self.streaming then
        self.streaming:Around(destination, function() return self:_Cancelled(generation, cancelled) end)
        if self:_Cancelled(generation, cancelled) then return nil, "Cancelado" end
    end
    local created, path = pcall(self._CreatePath, self, character, root, human)
    if not created then return nil, "Não foi possível criar o caminho" end
    local resource = {path = path, closed = false}
    local ok, message = self:_Compute(resource, origin, destination, generation, cancelled)
    local waypoints = ok and path:GetWaypoints() or {}
    self:_Release(resource)
    if not ok or #waypoints == 0 then return nil, message end
    return {kind = "path", waypoints = waypoints, destination = destination,
        cost = routeCost(origin, waypoints, destination)}
end

function Navigation:_Connection(origin, destination, cancelled, generation, allowLongTerrain, skipTerrain)
    if self:_Cancelled(generation, cancelled) then return nil, "Cancelado" end
    local character, root = self:_Character()
    if not root then return nil, "Personagem indisponível" end
    local points = self.flight and self.flight:PlanRoute(origin, destination, character, root)
    if self:_Cancelled(generation, cancelled) then return nil, "Cancelado" end
    if points then return {kind = "flight", points = points, destination = destination,
        cost = routeCost(origin, points, destination)} end
    local path, message = self:_NativeConnection(origin, destination, cancelled, generation)
    if path then return path end
    local distance = (destination - origin).Magnitude
    if not skipTerrain and self.terrain and distance > 48 and (allowLongTerrain or distance <= 256)
        and not self:_Cancelled(generation, cancelled) then
        return self.terrain:Plan(origin, destination, function()
            return self:_Cancelled(generation, cancelled)
        end, function(stage, values) self:_Trace(stage, values, generation) end,
        function(a, b, cancel)
            return self:_NativeConnection(a, b, cancel, generation)
        end, allowLongTerrain and (self.options.terrainPlanSeconds or 6) or 1.25)
    end
    return nil, message
end

function Navigation:_PlanRoutes(goals, cancelled, generation)
    if not self.planner then return nil, "Planejador de saídas indisponível" end
    local _, root = self:_Character()
    if not root then return nil, "Personagem indisponível" end
    if self.streaming and goals[1] then
        self.streaming:Corridor(root.Position, goals[1].position,
            function() return self:_Cancelled(generation, cancelled) end)
        if self:_Cancelled(generation, cancelled) then return nil, "Cancelado" end
    end
    if self.streaming and self.streaming.Exits and self.passages and self.passages.NeedsExitStreaming then
        local areas={root.Position}
        if goals[1]then areas[#areas+1]=goals[1].position end
        for _,area in ipairs(areas)do
            if self.passages:NeedsExitStreaming(area)then
                self:_Trace("loading_exits",{},generation)
                self.streaming:Exits(area,function()return self:_Cancelled(generation,cancelled)end)
                self.passages.scanned=-math.huge
                if self.ladder then self.ladder.scanned=-math.huge end
            end
            if self:_Cancelled(generation,cancelled)then return nil,"Cancelado"end
        end
    end
    local links, seen = {}, {}
    local function addLinks(position, range)
        if not self.ladder then return end
        for _, link in ipairs(self.ladder:GetLinks(position, range)) do
            local key = link.part:GetFullName() .. tostring(link.lower) .. tostring(link.upper)
            if not seen[key] then seen[key] = true; links[#links + 1] = link end
        end
    end
    addLinks(root.Position, self.options.exitSearchRadius or 700)
    local targets = {}
    for _, goal in ipairs(goals) do
        local target = goal.target or goal.key
        if not targets[target] then targets[target] = true; addLinks(goal.position, 220) end
    end
    if self.passages then
        local character,currentRoot,human=self:_Character()
        for _,link in ipairs(self.passages:WoodLinks(root.Position,goals,
            self:_RootHeight(character,currentRoot,human),function()return self:_Cancelled(generation,cancelled)end))do
            links[#links+1]=link
        end
    end
    self:_Trace("planning_exits", {routeGoals = #goals, ladderLinks = #links}, generation)
    local origin = root.Position
    local anchors,anchorKeys,corridors={},{},{}
    -- Pontos no terreno separam percursos longos em consultas locais. Uma
    -- unica consulta ate a cidade pode falhar mesmo com acessos utilizaveis.
    local parameters,height
    for _,goal in ipairs(goals)do
        local duplicate=false
        for _,previous in ipairs(corridors)do if(goal.position-previous).Magnitude<160 then duplicate=true;break end end
        local delta=horizontal(goal.position-origin)
        if not duplicate and #corridors<3 and delta.Magnitude>256 then
            if not parameters then
                parameters=RaycastParams.new()
                parameters.FilterType=Enum.RaycastFilterType.Exclude
                parameters.FilterDescendantsInstances={self.Global.PlayerCharacter.Character}
                parameters.RespectCanCollide=true
                parameters.CollisionGroup=root.CollisionGroup
                local character,anchorRoot,human=self:_Character()
                height=self:_RootHeight(character,anchorRoot,human)
            end
            corridors[#corridors+1]=goal.position
            local direction=delta.Unit
            local side=Vector3.new(-direction.Z,0,direction.X)
            for distance=160,delta.Magnitude-64,160 do
                for _,offset in ipairs({0,-96,96})do
                    local sample=origin+direction*distance+side*offset
                    local hit=self.Workspace:Raycast(Vector3.new(sample.X,math.max(origin.Y,goal.position.Y)+64,sample.Z),-UP*512,parameters)
                    if hit and hit.Normal.Y>=.55 and hit.Material~=Enum.Material.Water then
                        local point=hit.Position+UP*height
                        local key=string.format("%d:%d:%d",math.floor(point.X/48),math.floor(point.Y/12),math.floor(point.Z/48))
                        if not anchorKeys[key]and #anchors<90 then anchorKeys[key]=true;anchors[#anchors+1]=point end
                    end
                end
            end
        end
        if self:_Cancelled(generation,cancelled)then return nil,"Cancelado"end
    end
    local plans, message = self.planner:Plan(origin, goals, links, function()
        return self:_Cancelled(generation, cancelled)
    end, {
        Connect = function(a, b, cancel) return self:_Connection(a, b, cancel, generation, false, #links>0) end,
        Trace = function(stage, values) self:_Trace(stage, values, generation) end,
        Anchors=anchors,
    })
    if (not plans or #plans == 0) and not(self.planner.lastTrace and self.planner.lastTrace.budget)
        and self.terrain and not self:_Cancelled(generation, cancelled) then
        -- Uma busca longa pelo terreno so acontece depois de testar as saidas
        -- conhecidas, para nao gastar todo o tempo repetindo o mesmo NoPath.
        local candidates = table.clone(goals)
        table.sort(candidates, function(a, b)
            return (a.position - origin).Magnitude < (b.position - origin).Magnitude
        end)
        local tested, attempts, deadline = {}, 0, os.clock() + (self.options.routeFallbackSeconds or 10)
        plans = plans or {}
        for _, goal in ipairs(candidates) do
            local target = goal.target or goal.key
            if not tested[target] then
                tested[target], attempts = true, attempts + 1
                if attempts > 3 or os.clock() > deadline then break end
                local segment, failure = self:_Connection(origin, goal.position, function()
                    return os.clock() > deadline or self:_Cancelled(generation, cancelled)
                end, generation, true)
                if segment then
                    plans[#plans + 1] = {goal = goal, key = goal.key, target = goal.target,
                        position = goal.position, destination = goal.position,
                        cost = segment.cost, segments = {segment}}
                else message = failure or message end
                if self:_Cancelled(generation, cancelled) then return nil, "Cancelado" end
            end
        end
        table.sort(plans, function(a, b) return a.cost < b.cost end)
    end
    return plans, message
end

function Navigation:_ExecutePlan(plan, cancelled, generation, tolerance)
    local resource = {closed = false, waypointIndex = 1}
    self.active = resource
    local function execute(segment)
        if self:_Cancelled(generation, cancelled) then return false, "Cancelado" end
        if self:_AtApproach()then return true end
        if segment.kind == "flight" then
            local arrived,message=self:_FlyRoute(resource, segment.points, nil, generation, cancelled, tolerance)
            if not arrived and not self.haltReason and not self.recoveryReason
                and not self:_Cancelled(generation,cancelled)then
                local _,root=self:_Character()
                local path=root and self:_NativeConnection(root.Position,segment.destination,cancelled,generation)
                if path then return self:_FollowPath(resource,path.waypoints,segment.destination,generation,cancelled,tolerance)end
            end
            return arrived,message
        elseif segment.kind == "path" then
            return self:_FollowPath(resource, segment.waypoints, segment.destination,
                generation, cancelled, tolerance)
        elseif segment.kind == "ladder" and self.ladder then
            if self.flight then self.flight:Stop() end
            self:_ClearDrive(resource)
            self:_Trace("using_exit", {message = segment.upwards and "Subindo para a saída da mina"
                or "Descendo para a mina"}, generation)
            return self.ladder:Traverse(segment.link, segment.upwards, function()
                return self:_Cancelled(generation, cancelled)
            end, function(data) self:_Trace(data.stage, {message = data.message}, generation) end)
        elseif segment.kind == "walkway" then
            if not segment.link.part.Parent then return false,"Passagem de madeira removida"end
            local character,root,human=self:_Character()
            if not root then return false,"Personagem indisponível"end
            local points,waypoints=segment.points or segment.link.points,{}
            for _,point in ipairs(points)do waypoints[#waypoints+1]={Position=point-UP*self:_RootHeight(character,root,human)}end
            self:_Trace("wooden_walkway",{},generation)
            return self:_FollowPath(resource,waypoints,segment.destination,generation,cancelled,tolerance)
        elseif segment.kind == "route" then
            for _, child in ipairs(segment.segments or {}) do
                local ok, message = execute(child)
                if not ok then return false, message end
            end
            return true
        end
        return false, "Trecho da rota indisponível"
    end
    local ok, message = true, "Destino alcançado"
    for _, segment in ipairs(plan.segments or {}) do
        ok, message = execute(segment)
        if not ok then break end
    end
    self:_Release(resource)
    if not ok and not self:_Cancelled(generation, cancelled) and not self.recoveryReason then
        self.planner:Invalidate()
        self.prepared = setmetatable({}, {__mode = "k"})
    end
    return ok, message
end

function Navigation:_MoveTo(position, cancelled, generation, arrivalTolerance)
    if typeof(position) ~= "Vector3" then return false, "Destino inválido" end
    local _, root = self:_Character()
    if not root then return false, "Personagem indisponível" end
    if self:_Cancelled(generation, cancelled) then return false, "Cancelado" end
    if self:_AtApproach()then return true,"Perto do vendedor"end
    self:_Trace("destination", {destination = tostring(position)}, generation)
    local maximum = math.clamp(tonumber(self.options.maxDistance) or 3200, 1, 3200)
    if (root.Position - position).Magnitude > maximum then
        return false, "Destino além do limite de navegação (" .. tostring(maximum) .. " studs)"
    end
    local tolerance = arrivalTolerance or self.options.arrivalTolerance or 1.15
    if self:_Near(root, position, tolerance) then
        self:_Trace("arrived", {message = "Destino alcançado"}, generation)
        return true, "Destino alcançado"
    end

    local reason = "Nenhum caminho caminhável até o destino"
    local flightRoute = self.flight and self.flight:PlanRoute(root.Position, position,
        self.Global.PlayerCharacter.Character, root)
    if self:_Cancelled(generation, cancelled) then return false, "Cancelado" end
    if flightRoute then
        local directResource = {closed = false, waypointIndex = 1}
        self.active = directResource
        local arrived, message = self:_FlyRoute(directResource, flightRoute, nil,
            generation, cancelled, tolerance)
        self:_Release(directResource)
        if arrived then return true, message end
        if self.haltReason then return false, self.haltReason end
        if self.recoveryReason or self:_Cancelled(generation, cancelled) then return false, message end
        -- Um obstaculo que apareceu depois da amostragem pede uma rota local.
        reason = message
    end
    for _ = 1, (self.options.repathAttempts or 1) do
        if self:_Cancelled(generation, cancelled) then return false, "Cancelado" end
        local character, currentRoot, human = self:_Character()
        if not currentRoot then return false, "Personagem indisponível" end
        local created, path = pcall(self._CreatePath, self, character, currentRoot, human)
        if not created then return false, "Não foi possível criar o caminho" end
        local resource = { path = path, closed = false, blocked = false, waypointIndex = 1 }
        self.active = resource
        local ok
        ok, reason = self:_Compute(resource, currentRoot.Position, position, generation, cancelled)
        if ok then
            local waypoints = path:GetWaypoints()
            resource.blockedConnection = path.Blocked:Connect(function(index)
                if index >= resource.waypointIndex then resource.blocked = true end
            end)
            ok, reason = self:_FollowPath(resource, waypoints, position,
                generation, cancelled, tolerance)
        end
        self:_Release(resource)
        if self.haltReason then return false, self.haltReason end
        if self.recoveryReason then return false, reason end
        if ok then
            self:_Halt(generation)
            self:_Trace("arrived", {message = "Destino alcançado"}, generation)
            return true, "Destino alcançado"
        end
        if self:_Cancelled(generation, cancelled) then return false, "Cancelado" end
        self:_Halt(generation)
    end
    if self.planner and not self:_Cancelled(generation, cancelled) then
        for _=1,(self.options.routeAttempts or 3)do
            local plans, planError = self:_PlanRoutes({{key = "destination", position = position}},
                cancelled, generation)
            if not plans or not plans[1]then reason=planError or reason;break end
            local arrived,message=self:_ExecutePlan(plans[1],cancelled,generation,tolerance)
            if arrived then return true,message end
            reason=message or reason
            if self.haltReason or self.recoveryReason or self:_Cancelled(generation,cancelled)then return false,reason end
            self:_Trace("replanning",{message="Ajustando o caminho a partir da posição atual"},generation)
        end
    end
    self:_Trace("failed", {message = reason}, generation)
    return false, reason
end

function Navigation:MoveTo(position, cancelled)
    return self:_MoveTo(position, cancelled, self:_Begin())
end

function Navigation:_FloorAt(position, floorY, ignored)
    local character = self.Global.PlayerCharacter
    local filter = {}
    if character and character.Character then table.insert(filter, character.Character) end
    if ignored then table.insert(filter, ignored) end
    local parameters = RaycastParams.new()
    parameters.FilterType = Enum.RaycastFilterType.Exclude
    parameters.FilterDescendantsInstances = filter
    parameters.RespectCanCollide = true
    parameters.IgnoreWater = false
    -- O raio começa próximo à base da rocha, nunca acima de seu topo.
    local stepUp = self.options.floorStepUp or 5
    local drop = self.options.floorDrop or 20
    local origin = Vector3.new(position.X, floorY + stepUp, position.Z)
    local hit = self.Workspace:Raycast(origin, -UP * (stepUp + drop), parameters)
    if not hit or hit.Normal.Y < 0.55 or hit.Material == Enum.Material.Water then return nil end
    local model, root, human = self:_Character()
    if not root then return nil end
    return Vector3.new(position.X,
        hit.Position.Y + self:_RootHeight(model, root, human), position.Z)
end

function Navigation:_Face(position, generation)
    if generation ~= self.generation then return end
    local _, root = self:_Character()
    if not root then return end
    local target = Vector3.new(position.X, root.Position.Y, position.Z)
    if (target - root.Position).Magnitude > 0.05 then
        -- Apenas orientação horizontal; a posição atual é preservada.
        root.CFrame = CFrame.lookAt(root.Position, target, UP)
    end
end

function Navigation:_Approach(center, floorY, ignored, radiusForDirection, cancelled, generation, arrivalTolerance)
    local character, root, human = self:_Character()
    if not root then return false, "Personagem indisponível" end
    self:_Trace("approaching", {target = tostring(center)}, generation)
    local initial = horizontal(root.Position - center)
    if initial.Magnitude < 0.01 then initial = Vector3.new(1, 0, 0) end
    initial = initial.Unit
    local candidates = {}
    for _, degrees in ipairs(ANGLES) do
        local radians = math.rad(degrees)
        local direction = Vector3.new(
            initial.X * math.cos(radians) - initial.Z * math.sin(radians),
            0,
            initial.X * math.sin(radians) + initial.Z * math.cos(radians))
        local spot = center + direction * radiusForDirection(direction)
        local grounded = self:_FloorAt(spot, floorY, ignored)
        if grounded then table.insert(candidates, grounded) end
    end
    table.sort(candidates, function(a, b)
        return (a - root.Position).Magnitude < (b - root.Position).Magnitude
    end)
    local reason = "Não há piso acessível ao redor do destino"
    local maximumCandidates = self.options.maxApproachCandidates or 3
    local sideRetryDistance = self.options.approachSideRetryDistance or 48
    for index, candidate in ipairs(candidates) do
        if index > maximumCandidates then break end
        if self:_Cancelled(generation, cancelled) then return false, "Cancelado" end
        if not ignored or not ignored.Parent then return false, "Destino indisponível" end
        local ok
        self:_Trace("candidate", {candidateIndex = index, candidateCount = math.min(#candidates, maximumCandidates)}, generation)
        ok, reason = self:_MoveTo(candidate, cancelled, generation, arrivalTolerance)
        if self.haltReason then return false, self.haltReason end
        if self.recoveryReason then return false, reason end
        if ok then
            self:_Face(center, generation)
            return true, "Posicionado junto ao destino"
        end
        -- Em viagens longas, lados vizinhos normalmente compartilham o mesmo
        -- caminho global. Um NoPath não deve repetir a busca em toda a rocha.
        -- Já perto do alvo, os lados alternativos ainda ajudam a contornar obstáculos.
        if reason == "Nenhum caminho caminhável até o destino"
            and (root.Position - center).Magnitude > sideRetryDistance then
            break
        end
    end
    self:_Trace("failed", {message = reason}, generation)
    return false, reason
end

function Navigation:ApproachDeposit(model, cancelled)
    local generation = self:_Begin()
    if typeof(model) ~= "Instance" or not model:IsA("Model")
        or not model.Parent or not model.PrimaryPart then
        return false, "Depósito indisponível"
    end
    local ore = model:FindFirstChild("RockOre", true)
    if not ore then
        for name in pairs(self.Global.SharedData and self.Global.SharedData.OreDepositInfo or {}) do
            if model:HasTag(name) then ore = model:FindFirstChild(name .. "Ore", true); break end
        end
    end
    local ok, bounds, size = pcall(function()
        if ore and ore:IsA("BasePart") then return ore.CFrame, ore.Size end
        if ore and ore:IsA("Model") then return ore:GetBoundingBox() end
        return model:GetBoundingBox()
    end)
    if not ok then return false, "Geometria do depósito indisponível" end
    local half = size / 2
    local floorY = bounds.Position.Y - (
        math.abs(bounds.RightVector.Y) * half.X
        + math.abs(bounds.UpVector.Y) * half.Y
        + math.abs(bounds.LookVector.Y) * half.Z)
    local standOff = math.clamp(self.options.depositStandOff or 1.65, 1.5, 2)
    return self:_Approach(bounds.Position, floorY, model, function(direction)
        -- Interseção do raio horizontal com a caixa orientada da rocha.
        local localDirection = bounds:VectorToObjectSpace(direction)
        local radius = math.huge
        if math.abs(localDirection.X) > 0.001 then
            radius = math.min(radius, half.X / math.abs(localDirection.X))
        end
        if math.abs(localDirection.Y) > 0.001 then
            radius = math.min(radius, half.Y / math.abs(localDirection.Y))
        end
        if math.abs(localDirection.Z) > 0.001 then
            radius = math.min(radius, half.Z / math.abs(localDirection.Z))
        end
        return radius + standOff
    end, cancelled, generation, self.options.depositArrivalTolerance or 0.35)
end

function Navigation:_VendorData(instance)
    if typeof(instance) ~= "Instance" or not instance.Parent then
        return nil, "Vendedor indisponível"
    end
    local anchor = instance
    if instance:IsA("BillboardGui") then
        anchor = instance.Adornee or instance.Parent
    end
    if not anchor then return nil, "Vendedor sem ponto de interação" end
    local part
    if anchor:IsA("BasePart") then part = anchor end
    if not part and anchor:IsA("Model") then part = anchor.PrimaryPart end
    if not part then part = anchor:FindFirstChild("HumanoidRootPart", true) end
    if part and not part:IsA("BasePart") then part = nil end
    if not part and not anchor:IsA("Attachment") then
        part = anchor:FindFirstChildWhichIsA("BasePart", true)
    end
    local center, floorY
    if anchor:IsA("Attachment") then
        center = anchor.WorldPosition
        local parent = anchor.Parent
        floorY = parent and parent:IsA("BasePart")
            and parent.Position.Y - parent.Size.Y / 2 or center.Y - 3
    elseif part then
        center = part.Position
        floorY = center.Y - part.Size.Y / 2
    elseif anchor:IsA("Model") then
        center = anchor:GetPivot().Position
        floorY = center.Y
    else
        return nil, "Vendedor sem posição caminhável"
    end
    local isPickup = instance:IsA("BillboardGui") and instance.Name == "PickupItem"
    local radius = isPickup and (self.options.pickupStandOff or 2)
        or (self.options.vendorStandOff or 3.5)
    local tolerance = isPickup and (self.options.pickupArrivalTolerance or 0.6)
        or (self.options.vendorArrivalTolerance or 0.6)
    return {center = center, floorY = floorY, radius = radius, tolerance = tolerance,
        approachRadius=not isPickup and math.min(4,radius+.35)or nil}
end

function Navigation:_VendorSpots(instance, data)
    local _, root = self:_Character()
    if not root then return {} end
    local initial = horizontal(root.Position - data.center)
    initial = initial.Magnitude > 0.01 and initial.Unit or Vector3.new(1, 0, 0)
    local spots = {}
    for _, angle in ipairs(ANGLES) do
        local radians = math.rad(angle)
        local direction = Vector3.new(initial.X * math.cos(radians) - initial.Z * math.sin(radians),
            0, initial.X * math.sin(radians) + initial.Z * math.cos(radians))
        local spot = self:_FloorAt(data.center + direction * data.radius, data.floorY, instance)
        if spot then spots[#spots + 1] = spot end
    end
    table.sort(spots, function(a, b) return (a - root.Position).Magnitude < (b - root.Position).Magnitude end)
    return spots
end

function Navigation:PlanVendors(vendors, cancelled)
    local generation = self:_Begin()
    local _, root = self:_Character()
    if not root then return nil, "Personagem indisponível" end
    local origin, goals = root.Position, {}
    for vendorIndex, vendor in ipairs(vendors) do
        if self:_Cancelled(generation, cancelled) then return nil, "Cancelado" end
        local data = self:_VendorData(vendor)
        if data then
            if self.streaming and (data.center - origin).Magnitude <= (self.options.maxDistance or 3200) then
                self.streaming:Around(data.center, function() return self:_Cancelled(generation, cancelled) end)
            end
            for index, spot in ipairs(self:_VendorSpots(vendor, data)) do
                if index > (self.options.maxApproachCandidates or 3) then break end
                if (spot - origin).Magnitude <= (self.options.maxDistance or 3200) then
                    goals[#goals + 1] = {key = tostring(vendorIndex) .. ":" .. tostring(index),
                        target = vendor, position = spot}
                end
            end
        end
    end
    if #goals == 0 then return nil, "Nenhum acesso ao armazém está carregado no alcance" end
    local plans, message = self:_PlanRoutes(goals, cancelled, generation)
    if self:_Cancelled(generation, cancelled) then return nil, "Cancelado" end
    local ordered, seen = {}, {}
    for _, plan in ipairs(plans or {}) do
        local vendor = plan.target or (plan.goal and plan.goal.target)
        if vendor and not seen[vendor] then
            seen[vendor] = true
            ordered[#ordered + 1] = vendor
            self.prepared[vendor] = {plan = plan, origin = origin, expires = os.clock() + 45}
        end
    end
    if #ordered == 0 then return nil, message or "Recalculando uma saída da mina até o armazém" end
    return ordered, message
end

function Navigation:PreloadMines(areas, cancelled)
    if not self.streaming then return false, "Carregamento antecipado indisponível" end
    return self.streaming:Mines(areas, cancelled)
end

function Navigation:ApproachVendor(instance, cancelled)
    local generation = self:_Begin()
    if self:_Cancelled(generation,cancelled)then return false,"Cancelado"end
    local data, message = self:_VendorData(instance)
    if not data then return false, message end
    self.approachCenter,self.approachRadius=data.center,data.approachRadius
    local function finish(arrived,reason)
        if self:_Cancelled(generation,cancelled)then arrived,reason=false,"Cancelado"end
        self.approachCenter,self.approachRadius=nil,nil
        if arrived then self:_Face(data.center,generation)end
        return arrived,reason
    end
    if self:_AtApproach()then return finish(true,"Perto do vendedor")end
    local prepared = self.prepared and self.prepared[instance]
    local _, root = self:_Character()
    if prepared and root and prepared.expires > os.clock()
        and (prepared.origin - root.Position).Magnitude <= 8 then
        self.prepared[instance] = nil
        local arrived, reason = self:_ExecutePlan(prepared.plan, cancelled, generation, data.tolerance)
        return finish(arrived or self:_AtApproach(),reason)
    end
    local arrived,reason=self:_Approach(data.center, data.floorY, instance, function() return data.radius end,
        cancelled, generation, data.tolerance)
    return finish(arrived or self:_AtApproach(),reason)
end

return Navigation

end)()
local Sales = (function()
-- Sell All is the vendor's Secondary ObjectAction. The live UI displays
-- "Sell All"; ObjectActionTypes names its event SellAllLoot (0.5 s hold).
-- It sells all loot, including gems/pelts, while equipment is not loot.
local Sales = {}
local Adapter = {}
Adapter.__index = Adapter

local SELL_SHOPS = {
    GeneralShop = true,
    ManorGeneralShop = true,
    GunShop = true,
    FortHenryShop = true,
    FortSpencerShop = true,
    FortHighlandsShop = true,
}

function Sales.create(Global)
    return setmetatable({Global = Global, Entered = false, generation = 0}, Adapter)
end

local function vendorPosition(gui)
    local parent = gui and (gui.Adornee or gui.Parent)
    if parent and parent:IsA("Attachment") then
        return parent.WorldPosition
    elseif parent and parent:IsA("BasePart") then
        return parent.Position
    end
end

local function sellText(object)
    if not(object:IsA("TextLabel")or object:IsA("TextButton"))then return false end
    if object.AbsoluteSize.X<=0 or object.AbsoluteSize.Y<=0 then return false end
    local text=object.Text:lower():gsub("<.->","")
    if not text:find("sell all",1,true)then return false end
    local current=object
    while current do
        if current:IsA("GuiObject")and not current.Visible then return false end
        if current:IsA("BillboardGui")then return current.Enabled end
        current=current.Parent
    end
    return false
end

function Adapter:_SellLabel(gui)
    if self.labelVendor==gui and self.sellLabel and self.sellLabel.Parent and sellText(self.sellLabel)then return self.sellLabel end
    local function remember(label)self.labelVendor,self.sellLabel=gui,label;return label end
    local function search(container)
        if sellText(container)then return container end
        for _,object in ipairs(container:GetDescendants())do if sellText(object)then return object end end
    end
    local label=search(gui)
    if label then return remember(label)end
    local action=self:_Action(gui)
    local frame=action and action.ActionFrames and action.ActionFrames.Secondary
    for _,value in pairs(frame or{})do
        if typeof(value)=="Instance"then
            label=search(value)
            if label then return remember(label)end
        end
    end
end

function Adapter:_AimPosition(gui,camera)
    local label=self:_SellLabel(gui)
    local billboard=label and label:FindFirstAncestorWhichIsA("BillboardGui")or gui
    local anchor=vendorPosition(billboard)or vendorPosition(gui)
    if not anchor then return nil end
    local frame=camera.CFrame
    local center=anchor+billboard.StudsOffsetWorldSpace+frame:VectorToWorldSpace(billboard.StudsOffset)
    local depth=math.max(.1,math.abs(frame:PointToObjectSpace(center).Z))
    local pixelsToStuds=2*depth*math.tan(math.rad(camera.FieldOfView)/2)/math.max(camera.ViewportSize.Y,1)
    local width=billboard.Size.X.Scale+billboard.Size.X.Offset*pixelsToStuds
    local height=billboard.Size.Y.Scale+billboard.Size.Y.Offset*pixelsToStuds
    center=center+frame.RightVector*(billboard.SizeOffset.X*width)+frame.UpVector*(billboard.SizeOffset.Y*height)
    if label and billboard.AbsoluteSize.X>0 and billboard.AbsoluteSize.Y>0 then
        local position,size=label.AbsolutePosition,label.AbsoluteSize
        local x,y=position.X+size.X/2,position.Y+size.Y/2
        local bounds=label.TextBounds
        if bounds.X>0 then
            if label.TextXAlignment==Enum.TextXAlignment.Left then x=position.X+bounds.X/2
            elseif label.TextXAlignment==Enum.TextXAlignment.Right then x=position.X+size.X-bounds.X/2 end
        end
        if bounds.Y>0 then
            if label.TextYAlignment==Enum.TextYAlignment.Top then y=position.Y+bounds.Y/2
            elseif label.TextYAlignment==Enum.TextYAlignment.Bottom then y=position.Y+size.Y-bounds.Y/2 end
        end
        local dx=(x-billboard.AbsolutePosition.X)/billboard.AbsoluteSize.X-.5
        local dy=(y-billboard.AbsolutePosition.Y)/billboard.AbsoluteSize.Y-.5
        center=center+frame.RightVector*(dx*width)-frame.UpVector*(dy*height)
    end
    return center,label
end

function Adapter:_IsVendor(gui)
    if not gui or not gui.Parent or not SELL_SHOPS[gui.Name]
        or not gui:IsDescendantOf(workspace)
        or not gui:HasTag("ObjectActionGroup") or not vendorPosition(gui) then
        return false
    end
    local info = self.Global.ObjectActionTypes and self.Global.ObjectActionTypes[gui.Name]
    if not info or not info.Secondary or info.Secondary.NetworkEvent ~= "SellAllLoot" then
        return false
    end
    local owner = gui:GetAttribute("GroupOwner")
    local secondaryOwner = gui:GetAttribute("SecondaryOwner")
    if (owner ~= nil and owner ~= self.Global.LocalPlayerName)
        or (secondaryOwner ~= nil and secondaryOwner ~= self.Global.LocalPlayerName)
        or gui:GetAttribute("Disabled") or gui:GetAttribute("SecondaryDisabled") then
        return false
    end
    -- Fort clerks are available only after the local player captures the fort.
    -- Their verified Primary.OnStart checks Adornee through ClientForts.
    if gui.Name:match("^Fort") and info.Primary and info.Primary.OnStart then
        local ok, accepted = pcall(info.Primary.OnStart, {Adornee = gui.Parent, Instance = gui})
        if not ok or accepted == false then return false end
    end
    return true
end

function Adapter:GetVendors()
    local vendors = {}
    local character = self.Global.PlayerCharacter
    local root = character and character.RootPart
    local origin = root and root.Position
    for _, gui in ipairs(game:GetService("CollectionService"):GetTagged("ObjectActionGroup")) do
        if self:_IsVendor(gui) then table.insert(vendors, gui) end
    end
    if origin then
        table.sort(vendors, function(a, b)
            return (vendorPosition(a) - origin).Magnitude < (vendorPosition(b) - origin).Magnitude
        end)
    end
    return vendors
end

function Adapter:_Inventory()
    return self.Global.PlayerData:GetContainer("Inventory")
end

function Adapter:_IsSellableOre(item)
    local info = item and self.Global.SharedData.PlayerItems[item.Type]
    return info ~= nil and (info.Type == "Ore" or info.Type == "Gem") and info.IsLoot and not info.EquipmentType
        and self.Global.SharedUtils.CanSellItem(item)
end

function Adapter:CountSellable()
    local inventory = self:_Inventory()
    local count = 0
    if inventory and inventory.IsLoaded then
        for _, item in ipairs(inventory.Items) do
            if self:_IsSellableOre(item) then count = count + (item.StackSize or 1) end
        end
    end
    return count
end

function Adapter:_Cancelled(generation, cancelled)
    return self.generation ~= generation or (cancelled and cancelled()) or false
end

function Adapter:_Usable(inventory)
    local character = self.Global.PlayerCharacter
    return inventory and inventory.IsLoaded and character and character.RootPart
        and character.RootPart.Parent and character.Human and character.Human.Health > 0
end

function Adapter:_Action(gui)
    local groups = self.Global.ObjectActionGroups
    for _, entry in pairs(groups and groups.NearbyEntries or {}) do
        if entry.Gui == gui and not entry.Deleted and not entry.Destroyed then
            local action = entry.ObjectAction
            if action and action.Target == entry and action.Instance == gui then
                return action
            end
        end
    end
end

function Adapter:_ReadyAction(gui)
    local action = self:_Action(gui)
    if not action or not action.Active or action.Disabled or not action:CanActivate() then
        return nil
    end
    local frame = action.ActionFrames and action.ActionFrames.Secondary
    if not frame or not frame.Active or frame.Disabled or not frame.ActionInfo
        or frame.ActionInfo.NetworkEvent ~= "SellAllLoot" or not action.NetworkId then
        return nil
    end
    return action, frame
end

-- ObjectActionGroups enables interactions in front of the camera. These are
-- the same camera methods already verified for the pickup workflow.
function Adapter:_AimCamera(gui)
    local position = vendorPosition(gui)
    local camera = workspace.CurrentCamera
    local gameCamera = self.Global.Camera
    if not position or not camera or not gameCamera then
        return nil, "Camera indisponivel para o vendedor"
    end
    local pc=self.Global.PlayerCharacter
    if not pc or not pc.RootPart or not pc.Human then return nil,"Personagem indisponivel para o vendedor"end
    local character,root,human=pc.Character,pc.RootPart,pc.Human
    local oldFacing,oldRotate=pc.FacingMouse,human.AutoRotate
    local oldFrame, oldFocus, oldType = camera.CFrame, camera.Focus, camera.CameraType
    local oldGameFrame = gameCamera.CameraCFrame
    local ok, message = pcall(function() gameCamera:Disable() end)
    if not ok then return nil, tostring(message) end
    local active, connection = true, nil
    local function release()
        if not active then return end
        active = false
        if connection then connection:Disconnect() end
        local current = self.Global.PlayerCharacter
        if current.Character == character and current.Human and current.Human.Health > 0
            and workspace.CurrentCamera == camera then
            camera.CFrame, camera.Focus, camera.CameraType = oldFrame, oldFocus, oldType
            gameCamera.CameraCFrame = oldGameFrame
        end
        if current==pc and current.Character==character and human.Parent and human.Health>0 then
            human.AutoRotate=oldRotate
            if type(pc.FaceMouse)=="function"then pcall(pc.FaceMouse,pc,oldFacing)end
        end
        pcall(function()gameCamera:Enable()end)
        if self.aimTrace then self.aimTrace.active=false end
        if self.releaseCamera == release then self.releaseCamera = nil end
    end
    self.releaseCamera = release
    local function point()
        if active then
            if workspace.CurrentCamera~=camera then release();return end
            if pc.Character~=character or not root.Parent or not human.Parent or human.Health<=0 or not gui.Parent then release();return end
            local target,label=self:_AimPosition(gui,camera)
            if not target or(target-oldFrame.Position).Magnitude<.05 then return end
            local aim=CFrame.lookAt(oldFrame.Position,target)
            if type(pc.FaceMouse)=="function"then pc:FaceMouse(false)end
            human.AutoRotate=false
            local horizontal=Vector3.new(target.X,root.Position.Y,target.Z)
            if(horizontal-root.Position).Magnitude>.05 then root.CFrame=CFrame.lookAt(root.Position,horizontal)end
            camera.CameraType = Enum.CameraType.Scriptable
            camera.CFrame = aim
            camera.Focus = CFrame.new(target)
            gameCamera.CameraCFrame = aim
            self.aimTrace={active=true,labelFound=label~=nil,text=label and label.Text or nil,target=tostring(target)}
        end
    end
    point()
    if active then connection = game:GetService("RunService").RenderStepped:Connect(point)end
    return release
end

function Adapter:_Release(frame)
    if frame and frame:Activating() then frame:ActivateEnd() end
    if self.activeFrame == frame then self.activeFrame = nil end
end

-- Caller first moves beside the vendor. Sell All belongs to the world
-- interaction, so opening ItemShop here would disable its original button.
function Adapter:Enter(vendor, cancelled)
    if cancelled and cancelled() then return false, "Cancelado" end
    self:Leave()
    local generation = self.generation
    if not self:_IsVendor(vendor) then return false, "Vendedor indisponivel" end
    if not self:_Usable(self:_Inventory()) then
        return false, "Personagem ou inventario indisponivel"
    end
    local shop = self.Global.UI and self.Global.UI.ItemShop
    if shop and shop.IsOpen then shop:Close() end
    local release, message = self:_AimCamera(vendor)
    if not release then return false, message end
    local deadline = os.clock() + 3
    repeat
        if self:_Cancelled(generation, cancelled) then
            release()
            return false, "Cancelado"
        end
        if not self:_IsVendor(vendor) or not self:_Usable(self:_Inventory()) then
            release()
            return false, "Vendedor ou personagem indisponivel"
        end
        if self:_ReadyAction(vendor) then
            self.Entered = true
            self.Vendor = vendor
            return true, "Botao Sell All do vendedor disponivel"
        end
        task.wait(0.05)
    until os.clock() >= deadline
    release()
    return false, "Aproxime-se do vendedor para liberar o botao Sell All"
end

-- Success: true, ore units confirmed removed. Failure: false, reason,
-- confirmed ore units. Other loot sold by the original Sell All is not counted.
function Adapter:SellOres(cancelled, onStatus)
    if not self.Entered or not self.Vendor then
        return false, "Acesse um vendedor antes de vender", 0
    end
    local generation = self.generation
    local inventory = self:_Inventory()
    if not self:_Usable(inventory) then
        return false, "Personagem ou inventario indisponivel", 0
    end
    local snapshot, originalTotal = {}, 0
    for _, item in ipairs(inventory.Items) do
        if self:_IsSellableOre(item) then
            local quantity = item.StackSize or 1
            table.insert(snapshot, {Id = item.Id, Type = item.Type, Quantity = quantity})
            originalTotal = originalTotal + quantity
        end
    end
    if #snapshot == 0 then return true, 0 end
    local function confirmedSold()
        local count = 0
        for _, original in ipairs(snapshot) do
            local current = inventory:GetItem(original.Id)
            local remaining = current and (current.StackSize or 1) or 0
            if current and current.Type ~= original.Type then remaining = original.Quantity end
            count = count + math.clamp(original.Quantity - remaining, 0, original.Quantity)
        end
        return count
    end
    if self:_Cancelled(generation, cancelled) then return false, "Cancelado", 0 end
    local action, frame = self:_ReadyAction(self.Vendor)
    if not action then return false, "Botao Sell All indisponivel no vendedor", 0 end
    if self.Global.ObjectActionGroups.ActivatedActionFrame then
        return false, "Outra interacao esta em andamento", 0
    end
    if onStatus then onStatus("Vendedor: acionando Sell All") end
    if not action:ActivateStart("Secondary") or not frame:Activating() then
        return false, "O jogo recusou iniciar Sell All", 0
    end
    self.activeFrame = frame
    local duration = tonumber(frame.ActionInfo.Duration) or 1
    local began = os.clock()
    local deadline = began + duration + 3
    while frame:Activating() and os.clock() < deadline do
        if self:_Cancelled(generation, cancelled) then
            self:_Release(frame)
            return false, "Cancelado", confirmedSold()
        end
        if not self:_Usable(inventory) or not self:_IsVendor(self.Vendor) then
            self:_Release(frame)
            return false, "Vendedor ou personagem indisponivel", confirmedSold()
        end
        -- The game's update loop completes its original hold duration.
        -- Do not change the timer, disabled flags, network ID or event payload.
        task.wait(0.03)
    end
    self.activeFrame = nil
    if frame:Activating() then
        self:_Release(frame)
        return false, "Tempo esgotado no botao Sell All", confirmedSold()
    end
    if os.clock() - began + 0.03 < duration then
        return false, "Sell All interrompido pelo jogo", confirmedSold()
    end
    deadline = os.clock() + 6
    repeat
        if self:_Cancelled(generation, cancelled) then
            return false, "Cancelado", confirmedSold()
        end
        if not self:_Usable(inventory) then
            return false, "Personagem ou inventario indisponivel", confirmedSold()
        end
        local sold = confirmedSold()
        if sold == originalTotal then return true, sold end
        task.wait(0.1)
    until os.clock() >= deadline
    return false, "Sell All sem confirmacao de todos os minerios no inventario", confirmedSold()
end

function Adapter:Leave()
    self.generation = self.generation + 1
    self.Entered = false
    self.Vendor = nil
    self.labelVendor,self.sellLabel=nil,nil
    self:_Release(self.activeFrame)
    if self.releaseCamera then self.releaseCamera() end
    return true
end

return Sales

end)()
local Pickup = (function()
-- Collect mining drops and the five verified gemstone item types.
-- Mantém o timer original de 0,5 s e a validação de ações do jogo.
local Pickup = {}
Pickup.__index = Pickup
local GEM_TYPES={Diamond=true,Emerald=true,Amethyst=true,Sapphire=true,Ruby=true}
local ITEM_ATTRIBUTES={"ItemType","Item","ItemName","GemType","Type","PrimaryDescription"}

local function normalized(value)
    return type(value)=="string" and value:lower():gsub("<.->",""):gsub("^pick%s*up%s+",""):gsub("[^%w]","")or nil
end

function Pickup.create(Global)
    local self=setmetatable({
        Global = Global,
        CollectionService = game:GetService("CollectionService"),
        generation = 0,
        gemNames = {},
    }, Pickup)
    for name in pairs(GEM_TYPES)do
        local info=Global.SharedData and Global.SharedData.PlayerItems[name]
        if info and info.Type=="Gem" then
            self.gemNames[normalized(name)]=name
            self.gemNames[normalized(name.."Gem")]=name
            if type(info.Display)=="string" then self.gemNames[normalized(info.Display)]=name end
        end
    end
    return self
end

function Pickup:_Folder()
    local interactables = workspace:FindFirstChild("WORKSPACE_Interactables")
    local mining = interactables and interactables:FindFirstChild("Mining")
    return mining and mining:FindFirstChild("DroppedOre")
end

function Pickup:_GemType(gui)
    local function scan(object)
        -- Inspect the drop, its attachment and its model, never world folders.
        for _=1,4 do
            if not object or object==workspace or object:IsA("Folder") then break end
            local name=self.gemNames[normalized(object.Name)]
            if name then return name end
            for _,key in ipairs(ITEM_ATTRIBUTES)do
                name=self.gemNames[normalized(object:GetAttribute(key))]
                if name then return name end
                local value=object:FindFirstChild(key)
                if value and value:IsA("StringValue")then
                    name=self.gemNames[normalized(value.Value)]
                    if name then return name end
                end
            end
            object=object.Parent
        end
    end
    return scan(gui)or scan(gui.Adornee)
end

function Pickup:GetDropInfo(gui)
    local valid = gui and gui.Parent and gui.Name == "PickupItem"
        and gui:IsA("BillboardGui") and gui:HasTag("ObjectActionGroup")
        and gui:IsDescendantOf(workspace) or false
    if not valid then return nil end
    local groupOwner = gui:GetAttribute("GroupOwner")
    local primaryOwner = gui:GetAttribute("PrimaryOwner")
    if groupOwner ~= nil and groupOwner ~= self.Global.LocalPlayerName then return nil end
    if primaryOwner ~= nil and primaryOwner ~= self.Global.LocalPlayerName then return nil end
    local gem=self:_GemType(gui)
    local folder=self:_Folder()
    if not gem and not(folder and gui:IsDescendantOf(folder))then return nil end
    return {isGem=gem~=nil,itemType=gem,name=gem or "ore"}
end

function Pickup:_IsOreGui(gui)
    return self:GetDropInfo(gui)~=nil
end

function Pickup:_Position(gui)
    local part = gui and (gui.Adornee or gui.Parent)
    if part and part:IsA("Attachment") then return part.WorldPosition end
    if part and part:IsA("BasePart") then return part.Position end
    if part and part:IsA("Model") then return part:GetPivot().Position end
    return nil
end

function Pickup:GetPosition(gui)
    return self:_Position(gui)
end

function Pickup:GetDropsNear(position, radius, gemsOnly)
    local results,entries = {},{}
    if not position then return results end
    radius = radius or 20
    for _, gui in ipairs(self.CollectionService:GetTagged("ObjectActionGroup")) do
        local info=self:GetDropInfo(gui)
        if info and(not gemsOnly or info.isGem)then
            local dropPosition = self:_Position(gui)
            if dropPosition and (dropPosition - position).Magnitude <= radius then
                entries[#entries+1]={gui=gui,gem=info.isGem,distance=(dropPosition-position).Magnitude}
            end
        end
    end
    table.sort(entries, function(a, b)
        if a.gem~=b.gem then return a.gem end
        return a.distance<b.distance
    end)
    for _,entry in ipairs(entries)do results[#results+1]=entry.gui end
    return results
end

function Pickup:_Action(gui)
    local groups = self.Global.ObjectActionGroups
    if not groups then return nil end
    for _, entry in pairs(groups.NearbyEntries or {}) do
        if entry.Gui == gui and entry.ActionGroupType == "PickupItem"
            and not entry.Deleted and not entry.Destroyed then
            local action = entry.ObjectAction
            if action and action.Target == entry and action.Instance == gui then
                return action
            end
        end
    end
    return nil
end

function Pickup:_InventoryQuantity(itemType)
    local inventory = self.Global.PlayerData:GetContainer("Inventory")
    local quantity = 0
    for _, item in pairs(inventory and inventory.Items or {}) do
        if not itemType or item.Type==itemType then
            quantity = quantity + (tonumber(item.StackSize) or 1)
        end
    end
    return quantity
end

function Pickup:_Cancelled(generation, cancelled)
    return self.generation ~= generation or (cancelled and cancelled()) or false
end

function Pickup:_Release(frame)
    if frame and frame:Activating() then frame:ActivateEnd() end
    if self.activeFrame == frame then self.activeFrame = nil end
end

function Pickup:_Collect(gui, cancelled)
    local generation = self.generation
    local dropInfo=self:GetDropInfo(gui)
    if not dropInfo then
        return false, "Coleta ignorada: objeto fora da pasta de minérios"
    end
    local inventory = self.Global.PlayerData:GetContainer("Inventory")
    if not inventory or not inventory.IsLoaded then
        return false, "Aguardando inventário carregar"
    end
    if type(inventory.Size) ~= "number" or inventory.Size <= 0 then
        return false, "Capacidade do inventário ainda indisponível"
    end
    if #inventory.Items >= inventory.Size then
        return false, "Inventário cheio"
    end
    local beforeQuantity = self:_InventoryQuantity(dropInfo.itemType)
    local deadline = os.clock() + 2
    local action = nil
    repeat
        if self:_Cancelled(generation, cancelled) then return false, "Cancelado" end
        if not self:_IsOreGui(gui) then return false, "Minério não está mais disponível" end
        action = self:_Action(gui)
        if action and action.Active and not action.Disabled then break end
        task.wait(0.05)
    until os.clock() >= deadline
    if not action or not action.Active or action.Disabled or not action:CanActivate() then
        return false, "Aproxime-se e olhe para o minério para liberar a coleta"
    end
    local frame = action.ActionFrames and action.ActionFrames.Primary
    if not frame or not frame.Active or frame.Disabled or not frame.ActionInfo
        or frame.ActionInfo.NetworkEvent ~= "PickupItem" or not action.NetworkId then
        return false, "Ação original de coletar minério indisponível"
    end
    local groups = self.Global.ObjectActionGroups
    if groups.ActivatedActionFrame then
        return false, "Outra interação está em andamento"
    end
    if not action:ActivateStart("Primary") or not frame:Activating() then
        return false, "O jogo recusou iniciar a coleta"
    end
    self.activeFrame = frame
    local duration = tonumber(frame.ActionInfo.Duration) or 1
    local began = os.clock()
    deadline = began + duration + 3
    while frame:Activating() and os.clock() < deadline do
        if self:_Cancelled(generation, cancelled) then
            self:_Release(frame)
            return false, "Cancelado"
        end
        -- ObjectActionGroups:Update executa UpdateActivation e conclui o timer.
        -- Não alteramos TimeActivated, Duration, Disabled ou NetworkId.
        task.wait(0.03)
    end
    self.activeFrame = nil
    if frame:Activating() then
        self:_Release(frame)
        return false, "Tempo esgotado na interação de coleta"
    end
    if os.clock() - began + 0.03 < duration then
        return false, "Coleta interrompida pelo jogo"
    end
    deadline = os.clock() + 1.5
    repeat
        if self:_Cancelled(generation, cancelled) then return false, "Cancelado" end
        if self:_InventoryQuantity(dropInfo.itemType) > beforeQuantity then
            return true, "Minério recebido no inventário"
        end
        task.wait(0.05)
    until os.clock() >= deadline
    return false, "Coleta sem confirmação no inventário"
end

-- ObjectActionGroups habilita somente interacoes a frente da camera.
-- Disable/Enable sao os mesmos metodos usados pela tela de spawn do jogo.
function Pickup:_AimCamera(gui)
    local position = self:_Position(gui)
    local camera = workspace.CurrentCamera
    local gameCamera = self.Global.Camera
    if not position or not camera or not gameCamera then
        return nil, "Câmera indisponível para coletar"
    end
    local character = self.Global.PlayerCharacter.Character
    local oldFrame, oldFocus, oldType = camera.CFrame, camera.Focus, camera.CameraType
    local oldGameFrame = gameCamera.CameraCFrame
    local aim = CFrame.lookAt(oldFrame.Position, position)
    local disabled, disableError = pcall(function() gameCamera:Disable() end)
    if not disabled then return nil, tostring(disableError) end
    local active = true
    local connection
    local function release()
        if not active then return end
        active = false
        if connection then connection:Disconnect() end
        local current = self.Global.PlayerCharacter
        if current and current.Character == character and current.Human and current.Human.Health > 0
            and workspace.CurrentCamera == camera then
            camera.CFrame, camera.Focus, camera.CameraType = oldFrame, oldFocus, oldType
            gameCamera.CameraCFrame = oldGameFrame
        end
        pcall(function() gameCamera:Enable() end)
        if self.releaseCamera == release then self.releaseCamera = nil end
    end
    self.releaseCamera = release
    local function point()
        if active and workspace.CurrentCamera == camera then
            local currentPosition=self:_Position(gui)
            if currentPosition then position=currentPosition;aim=CFrame.lookAt(oldFrame.Position,position)end
            camera.CameraType = Enum.CameraType.Scriptable
            camera.CFrame = aim
            camera.Focus = CFrame.new(position)
            gameCamera.CameraCFrame = aim
        end
    end
    point()
    connection = game:GetService("RunService").RenderStepped:Connect(point)
    return release
end

function Pickup:Collect(gui, cancelled)
    if not self:_IsOreGui(gui) then return false, "Objeto removido" end
    if cancelled and cancelled() then return false, "Cancelado" end
    local release, message = self:_AimCamera(gui)
    if not release then return false, message end
    local result = table.pack(pcall(self._Collect, self, gui, cancelled))
    release()
    if not result[1] then return false, "Falha na coleta: " .. tostring(result[2]) end
    return table.unpack(result, 2, result.n)
end

function Pickup:Stop()
    self.generation = self.generation + 1
    self:_Release(self.activeFrame)
    if self.releaseCamera then self.releaseCamera() end
end

return Pickup

end)()
local Recovery = (function()
-- Recuperacao pelo fluxo normal de levantar e pelo botao de nascer do jogo.
-- Nao modifica saude, cooldowns, controle, estado de ragdoll ou remotes.
local Recovery = {}
Recovery.__index = Recovery

local SPAWN_RETRY = 4
local GET_UP_RETRY = 2
local POLL_INTERVAL = 0.15

local function optionalMethod(object, name, fallback)
    if not object or type(object[name]) ~= "function" then return fallback end
    local ok, value = pcall(object[name], object)
    return ok and value == true
end

function Recovery.create(Global)
    assert(type(Global) == "table", "Global do jogo indisponivel")
    return setmetatable({Global = Global, generation = 0, destroyed = false,
        lastSpawnAttempt = -math.huge, lastGetUpAttempt = -math.huge,
        lastSpawnName = nil, fireSignal = firesignal,
        getConnections = getconnections}, Recovery)
end

function Recovery:_Cancelled(generation, cancelled)
    return self.destroyed or self.generation ~= generation
        or (cancelled and cancelled()) or false
end

function Recovery:_Alive()
    local pc = self.Global.PlayerCharacter
    if not pc or pc.IsDead then return false end
    local model, root, human = pc.Character, pc.RootPart, pc.Human
    return model ~= nil and model.Parent ~= nil and root ~= nil and root.Parent ~= nil
        and human ~= nil and human.Parent ~= nil and (tonumber(human.Health) or 0) > 0
end

function Recovery:IsReady()
    if self.destroyed or not self:_Alive() then return false end
    local pc = self.Global.PlayerCharacter
    return optionalMethod(pc, "HasFullControl", true)
        and optionalMethod(pc, "IsUpright", true)
end

function Recovery:_SpawnUI()
    return self.Global.UI and self.Global.UI.Spawn
end

function Recovery:_Unlocked(button)
    if not button or not button.Name or button.Visible == false then return false end
    local playerData = self.Global.PlayerData
    if not playerData or type(playerData.IsSpawnUnlocked) ~= "function" then return false end
    local ok, unlocked = pcall(playerData.IsSpawnUnlocked, playerData, button.Name)
    return ok and unlocked == true
end

function Recovery:_RememberSelection(spawn)
    local button = spawn and spawn.SelectedButton
    if self:_Unlocked(button) then self.lastSpawnName = button.Name end
end

function Recovery:_ChooseSpawn(spawn)
    -- Uma selecao em cooldown continua sendo a escolha do jogador; aguarda-se
    -- o desbloqueio em vez de trocar de cidade a cada tentativa.
    local selected = spawn.SelectedButton
    if self:_Unlocked(selected) then
        self.lastSpawnName = selected.Name
        return selected
    end
    local buttons = spawn.SpawnButtons or {}
    local previous = self.lastSpawnName and buttons[self.lastSpawnName]
    local choice = self:_Unlocked(previous) and previous or nil
    if not choice then
        local names = {}
        for name, button in pairs(buttons) do
            if self:_Unlocked(button) then names[#names + 1] = name end
        end
        table.sort(names)
        choice = names[1] and buttons[names[1]] or nil
    end
    if not choice or type(spawn.Select) ~= "function" then return nil end
    local ok = pcall(spawn.Select, spawn, choice.Name, true)
    if not ok then return nil end
    self.lastSpawnName = choice.Name
    return spawn.SelectedButton == choice and choice or nil
end

function Recovery:_SpawnAllowed(spawn, button)
    if not spawn or not spawn.Opened or not button or not self:_Unlocked(button)
        or button.Locked or spawn.SelectingButton then return false end
    if spawn.Gui and spawn.Gui.Enabled == false then return false end
    local paused = spawn.SpawnUIPaused
    if not paused or type(paused.get) ~= "function" then return false end
    local ok, pausedValue = pcall(paused.get, paused)
    if not ok or pausedValue ~= false then return false end
    local streaming = self.Global.StreamingLoad
    if button.Allegiance ~= "Placeable" and streaming
        and type(streaming.IsRegionStreamedIn) == "function" then
        local streamed, available = pcall(streaming.IsRegionStreamedIn, streaming, button.Name)
        if not streamed or available ~= true then return false end
    end
    local state = self.Global.ReplicatedState and self.Global.ReplicatedState.State
    if state then
        if button.Allegiance == "Citizen" and (tonumber(state.Bounty) or 0) > 0 then return false end
        local deadline = state.SpawnCooldowns and state.SpawnCooldowns[button.Name]
        if deadline then
            local clock = self.Global.SyncedTime
            if not clock or not optionalMethod(clock, "IsSynced", false)
                or type(clock.GetTime) ~= "function" then return false end
            local timeOK, now = pcall(clock.GetTime, clock)
            if not timeOK or type(now) ~= "number" or now < deadline then return false end
        end
    end
    return spawn.SelectedButton == button
end

function Recovery:_ActivateSpawn(spawn, generation, cancelled)
    local gui = spawn.Gui
    local screen = gui and type(gui.FindFirstChild) == "function" and gui:FindFirstChild("Screen")
    local accept = screen and type(screen.FindFirstChild) == "function"
        and screen:FindFirstChild("AcceptButton")
    if not accept or self:_Cancelled(generation, cancelled) then return false end
    local signal = accept.Activated
    -- O callback existente conserva o pedido e as verificacoes do proprio jogo.
    -- Nao ha chamada direta a um remote de spawn.
    if type(self.fireSignal) == "function" then
        return pcall(self.fireSignal, signal)
    end
    if type(self.getConnections) == "function" then
        local ok, connections = pcall(self.getConnections, signal)
        if ok and type(connections) == "table" then
            local fired = false
            for _, connection in pairs(connections) do
                if self:_Cancelled(generation, cancelled) then return false end
                if connection.Enabled ~= false and type(connection.Fire) == "function" then
                    local fireOK = pcall(connection.Fire, connection)
                    fired = fired or fireOK
                end
            end
            return fired
        end
    end
    return false
end

function Recovery:WaitReady(cancelled, onStatus)
    local generation = self.generation
    local lastStatus
    local function status(message)
        if message ~= lastStatus then
            lastStatus = message
            if onStatus then onStatus(message) end
        end
    end
    while not self:_Cancelled(generation, cancelled) do
        local spawn = self:_SpawnUI()
        self:_RememberSelection(spawn)
        if self:IsReady() then return true end
        local now = os.clock()
        local pc = self.Global.PlayerCharacter
        if self:_Alive() then
            status("Aguardando o personagem se recuperar...")
            if optionalMethod(pc, "CanGetUp", false) and type(pc.GetUp) == "function"
                and now - self.lastGetUpAttempt >= GET_UP_RETRY
                and not self:_Cancelled(generation, cancelled) then
                self.lastGetUpAttempt = now
                -- CanGetUp aplica o cooldown e bloqueios normais (ex.: paralisia).
                pcall(pc.GetUp, pc)
            end
        elseif spawn and spawn.Opened then
            local button = self:_ChooseSpawn(spawn)
            if self:_SpawnAllowed(spawn, button) then
                if now - self.lastSpawnAttempt >= SPAWN_RETRY
                    and not self:_Cancelled(generation, cancelled) then
                    self.lastSpawnAttempt = now
                    if self:_ActivateSpawn(spawn, generation, cancelled) then
                        status("Reaparecendo para retomar a mineracao...")
                    else
                        status("Selecione Nascer no jogo; o farm retomara automaticamente.")
                    end
                end
            else
                status("Aguardando o local de reaparecimento ficar disponivel...")
            end
        else
            status("Aguardando o personagem reaparecer...")
        end
        task.wait(POLL_INTERVAL)
    end
    return false, "Cancelado"
end

function Recovery:Stop()
    self.generation = self.generation + 1
end

function Recovery:Destroy()
    self.destroyed = true
    self:Stop()
end

return Recovery

end)()
local launch = (function()
-- Controlador: procura deposito, caminha, minera, coleta e vende ao encher.
return function(UI, Mining, Navigation, Sales, Pickup, Flight, Recovery, RoutePlanner, Ladder, TerrainPath, Streaming, Passages, English, Reports)
    local ORE_CHOICES={"Limestone","Copper","Coal"}
    local ORE_LABELS={Limestone="Limestone",Copper="Copper",Coal="Coal"}
    local ORE_WEIGHTS={Limestone=2,Copper=1,Coal=1}
    local MAX_SELECTED_ORES=2
    local function selectionSlots(ores)
        local total=0
        for _,name in ipairs(ores)do total=total+(ORE_WEIGHTS[name]or 1)end
        return total
    end
    local function translate(message)return English and English.translate(message)or tostring(message)end
    local CONFIG = {flightSpeed = 18, flightClearance = 1.5, repositionTolerance = 7,
        maxDistance = 3200, maxPlans = 1, maxSeconds = 8, maxConnectCalls = 32,
        failureTTL = 120, firstConfirmed = true, routeFallbackSeconds = 10, depositStandOff = 1.65,
        depositArrivalTolerance = 0.35, maxLinks = 80}
    assert(game.PlaceId == 2317712696, "Execute este script no The Wild West.")
    local Global = require(game:GetService("ReplicatedStorage").SharedModules.Global)
    assert(Global.PlayerData and Global.PlayerCharacter and Global.SharedData,
        "Aguarde o jogo carregar antes de executar.")
    local environment = (getgenv and getgenv()) or _G
    if environment.TWWMiner and environment.TWWMiner.Destroy then
        environment.TWWMiner:Destroy()
    end

    local mining = Mining.create(Global)
    local navigation = Navigation.create(Global, CONFIG, Flight, RoutePlanner, Ladder, TerrainPath, Streaming, Passages)
    local sales = Sales.create(Global)
    local pickup = Pickup and Pickup.create(Global)
    local recovery = Recovery and Recovery.create(Global)
    local state = {running = false, closed = false, generation = 0, workerActive = false,
        selectedOres = {}, activeOre = nil, status = "Pronto", sold = 0,
        recovering = false, recoveryCount = 0, recoveryError = nil, equipWatchActive = false,
        loadedDeposits = 0, loadedOreCounts = {}}
    local api = {}
    local ui
    local connections = {}
    -- Sobrevive às novas tentativas do supervisor, sem prender uma rota depois
    -- que o personagem deixa o trecho onde a aproximação falhou.
    local vendorFailures = setmetatable({}, {__mode = "k"})
    local vendorFailureOrigin
    local lastMinePrefetch = -math.huge
    local pendingGems = {}

    local function refreshOreMap()
        if type(mining.GetDepositMap) ~= "function" then return nil end
        local map = mining:GetDepositMap()
        local counts = {}
        for _, entry in ipairs(map) do
            counts[entry.name] = (counts[entry.name] or 0) + 1
        end
        state.loadedDeposits = #map
        state.loadedOreCounts = counts
        return map
    end

    local function inventory()
        return Global.PlayerData:GetContainer("Inventory")
    end

    local function updateInventory()
        local container = inventory()
        if ui then
            ui:SetInventory(string.format("%d / %d slots | %d sold",
                #container.Items, container.Size or 0, state.sold))
        end
    end

    local function status(message)
        state.status = translate(message)
        if ui then ui:SetStatus(state.status) end
    end
    CONFIG.onNavigationStatus = status

    local function full()
        local container = inventory()
        return container.IsLoaded and (container.Size or 0) > 0
            and #container.Items >= container.Size
    end

    local function characterReady()
        local character = Global.PlayerCharacter
        return character and not character.IsDead and character.Character
            and character.RootPart and character.RootPart.Parent and character.Human
            and character.Human.Health > 0
    end

    local function fallen()
        if CONFIG.flightActive or not characterReady() then return false end
        local character = Global.PlayerCharacter
        if type(character.IsUpright) ~= "function" then return false end
        local ok, upright = pcall(character.IsUpright, character)
        return ok and not upright
    end

    local function releaseActions()
        pcall(function() mining:Stop() end)
        pcall(function() navigation:Stop() end)
        if pickup then pcall(function() pickup:Stop() end) end
        pcall(function() sales:Leave() end)
    end

    function api:Stop(message)
        state.generation = state.generation + 1
        state.running = false
        state.recovering = false
        state.recoveryError = nil
        state.equipWatchToken = nil
        state.equipWatchActive = false
        releaseActions()
        if recovery then recovery:Stop() end
        if ui then ui:SetRunning(false) end
        if message then status(message) end
    end

    function api:GetState()
        return {running = state.running, selected = state.selectedOres[1],
            selectedOres = table.clone(state.selectedOres), activeOre = state.activeOre,
            maxSelectedOres=MAX_SELECTED_ORES,
            selectionSlots=selectionSlots(state.selectedOres),
            status = state.status, sold = state.sold, workerActive = state.workerActive,
            recovering = state.recovering, recoveryCount = state.recoveryCount,
            equipWatchActive = state.equipWatchActive,
            flightSpeed = CONFIG.flightSpeed,
            maxDistance = CONFIG.maxDistance,
            loadedDeposits = state.loadedDeposits,
            loadedOreCounts = table.clone(state.loadedOreCounts),
            gemPickupEnabled=pickup and type(pickup.GetDropInfo)=="function"or false,
            pendingGemDrops=#pendingGems,
            saleAim=sales.aimTrace and table.clone(sales.aimTrace)or nil,
            navigation = table.clone(navigation.trace)}
    end

    function api:GetOreMap()
        return refreshOreMap() or {}
    end

    function api:SetFlightSpeed(value)
        local speed = tonumber(value)
        if not speed or speed ~= speed or speed < 1 or speed > 80 then return false end
        CONFIG.flightSpeed = math.floor(speed + 0.5)
        if ui then ui:SetFlightSpeed(CONFIG.flightSpeed) end
        return true
    end

    function api:SetSelectedOres(ores)
        if state.closed or type(ores) ~= "table" then return false end
        local selected, seen = {}, {}
        for _, ore in ipairs(ores) do
            if type(ore) ~= "string" or not ORE_LABELS[ore]
                or not Global.SharedData.OreDepositInfo[ore] then return false end
            if not seen[ore] then
                seen[ore] = true
                selected[#selected + 1] = ore
                if selectionSlots(selected) > MAX_SELECTED_ORES then return false end
            end
        end
        local changed = #selected ~= #state.selectedOres
        for index, ore in ipairs(selected) do
            if state.selectedOres[index] ~= ore then changed = true; break end
        end
        if not changed then return true end
        if state.running then self:Stop("Seleção alterada; clique Iniciar") end
        state.selectedOres = selected
        state.activeOre = nil
        if ui and ui.SetSelectedOres then ui:SetSelectedOres(selected) end
        return true
    end

    function api:Select(ore)
        return self:SetSelectedOres(type(ore) == "table" and ore or {ore})
    end

    local function sellInventory(cancelled)
        mining:Stop()
        if sales:CountSellable() == 0 then
            return false, "Mochila cheia sem minérios vendáveis. Libere espaço no jogo."
        end
        local vendors = sales:GetVendors()
        if #vendors == 0 then
            return false, "Nenhum armazém carregado. Aproxime-se de uma cidade."
        end
        local root = Global.PlayerCharacter.RootPart
        if vendorFailureOrigin and (root.Position - vendorFailureOrigin).Magnitude > 32 then
            vendorFailures = setmetatable({}, {__mode = "k"})
            vendorFailureOrigin = nil
        end
        local available, nextRetry = {}, nil
        for _, vendor in ipairs(vendors) do
            local retryAt = vendorFailures[vendor]
            if not retryAt or retryAt <= os.clock() then
                available[#available + 1] = vendor
            else
                nextRetry = math.min(nextRetry or retryAt, retryAt)
            end
        end
        if #available == 0 then
            return false, string.format("Recalculando a saída para vender em %d s",
                math.max(1, math.ceil((nextRetry or os.clock()) - os.clock())))
        end
        if type(navigation.PlanVendors) == "function" then
            status("Calculando saída da mina e rota de venda")
            local planned, planError = navigation:PlanVendors(available, cancelled)
            if cancelled() then return false, "Cancelado" end
            if navigation.haltReason then return false, navigation.haltReason end
            if navigation.recoveryReason then return false, planError end
            if not planned or #planned == 0 then
                return false, planError or "Recalculando uma saída da mina até um armazém acessível"
            end
            vendors = planned
        else
            vendors = available
        end
        local lastError = "Não foi possível chegar ao armazém"
        for index, vendor in ipairs(vendors) do
            if cancelled() then return false, "Cancelado" end
            status("Mochila cheia: indo ao armazém " .. index .. "/" .. #vendors)
            local arrived, message = navigation:ApproachVendor(vendor, cancelled)
            if navigation.haltReason then return false, navigation.haltReason end
            if navigation.recoveryReason then return false, message end
            if cancelled() then return false, "Cancelado" end
            if arrived then
                vendorFailures[vendor] = nil
                local entered, enterError = sales:Enter(vendor, cancelled)
                if entered then
                    local sold, count, partial = sales:SellOres(cancelled, status)
                    state.sold = state.sold + (sold and count or (partial or 0))
                    if cancelled() then return false, "Cancelado" end
                    sales:Leave()
                    updateInventory()
                    if not sold then return false, count end
                    if full() then return false, "Ainda há itens ocupando toda a mochila" end
                    status("Venda confirmada; voltando aos minérios")
                    return true
                end
                lastError = enterError
            else
                lastError = message
                vendorFailures[vendor] = os.clock() + 20
                vendorFailureOrigin = Global.PlayerCharacter.RootPart.Position
            end
        end
        return false, lastError
    end

    local function rememberGems(position)
        if not pickup or type(pickup.GetDropInfo)~="function" or type(pickup.GetPosition)~="function" then return end
        for _,drop in ipairs(pickup:GetDropsNear(position,32,true))do
            local info=pickup:GetDropInfo(drop)
            local point=pickup:GetPosition(drop)
            if info and info.isGem and point then
                local known=false
                for _,entry in ipairs(pendingGems)do
                    if entry.gui==drop or entry.itemType==info.itemType and(entry.position-point).Magnitude<2 then known=true;break end
                end
                if not known then
                    if #pendingGems>=16 then table.remove(pendingGems,1)end
                    pendingGems[#pendingGems+1]={gui=drop,position=point,itemType=info.itemType,expires=os.clock()+120}
                end
            end
        end
    end

    local function forgetGem(drop)
        local info=pickup.GetDropInfo and pickup:GetDropInfo(drop)
        local point=pickup.GetPosition and pickup:GetPosition(drop)
        for index=#pendingGems,1,-1 do
            local entry=pendingGems[index]
            if entry.gui==drop or info and point and entry.itemType==info.itemType
                and(entry.position-point).Magnitude<2 then table.remove(pendingGems,index)end
        end
    end

    local function collectNearby(position, cancelled, gemsOnly)
        if not pickup then return true end
        rememberGems(position)
        if full() then return true end
        local drops = pickup:GetDropsNear(position, 32, gemsOnly)
        for _, drop in ipairs(drops) do
            if cancelled() then return false, "Cancelado" end
            if full() then return true end
            local info=pickup.GetDropInfo and pickup:GetDropInfo(drop)
            status(info and info.isGem and "Collecting "..info.name or "Coletando minério")
            local moved, travelError = navigation:ApproachVendor(drop, cancelled)
            if navigation.haltReason then return false, navigation.haltReason end
            if navigation.recoveryReason then return false, travelError end
            if moved and not cancelled() then
                local collected, message = pickup:Collect(drop, cancelled)
                if collected then forgetGem(drop)
                elseif message ~= "Objeto removido" then
                    status(message)
                end
            end
        end
        updateInventory()
        return true
    end

    local function collectPendingGems(cancelled)
        local pc=Global.PlayerCharacter
        local root=pc and pc.RootPart
        if not pickup or not root or full()then return true end
        local nearest,best
        for index=#pendingGems,1,-1 do
            local entry=pendingGems[index]
            if entry.expires<=os.clock()then table.remove(pendingGems,index)
            else
                local distance=(entry.position-root.Position).Magnitude
                if distance<=CONFIG.maxDistance and(not best or distance<best)then nearest,best=index,distance end
            end
        end
        if not nearest then return true end
        local entry=table.remove(pendingGems,nearest)
        if cancelled()then return false,"Cancelado"end
        status("Collecting "..entry.itemType)
        if best>24 then
            local moved,message
            if entry.gui.Parent and pickup:GetDropInfo(entry.gui)then
                moved,message=navigation:ApproachVendor(entry.gui,cancelled)
            elseif type(navigation.MoveTo)=="function"then
                moved,message=navigation:MoveTo(entry.position+Vector3.new(0,3,0),cancelled)
            end
            if navigation.haltReason then return false,navigation.haltReason end
            if navigation.recoveryReason then return false,message end
            if cancelled()then return false,"Cancelado"end
            if not moved then return true end
        end
        return collectNearby(entry.position,cancelled,true)
    end

    local function worker(generation)
        local characterModel = Global.PlayerCharacter.Character
        local function cancelled()
            return state.closed or not state.running or generation ~= state.generation
                or state.recoveryError ~= nil or not characterReady()
                or Global.PlayerCharacter.Character ~= characterModel or fallen()
        end
        local blockedUntil = setmetatable({}, {__mode = "k"})
        while not cancelled() do
            if navigation.haltReason then return false, navigation.haltReason end
            if not characterReady() then return false, "Personagem indisponível; entre no mapa e reinicie" end
            updateInventory()
            rememberGems(Global.PlayerCharacter.RootPart.Position)
            if not full()then
                local collected,collectError=collectPendingGems(cancelled)
                if not collected then return false,collectError end
            end
            local map = refreshOreMap()
            local visibleSelected = {}
            for _, entry in ipairs(map or {}) do visibleSelected[entry.name] = true end
            local prefetchInterval = 90
            for _, name in ipairs(state.selectedOres) do
                if not visibleSelected[name] then prefetchInterval = 8; break end
            end
            if not full() and type(navigation.PreloadMines) == "function"
                and type(mining.GetSearchAreas) == "function" and os.clock() - lastMinePrefetch >= prefetchInterval then
                status("Carregando as regiões de mineração")
                lastMinePrefetch = os.clock()
                navigation:PreloadMines(mining:GetSearchAreas(), cancelled)
                if cancelled() then break end
                map = refreshOreMap()
            end
            if full() then
                state.activeOre = nil
                local sold, message = sellInventory(cancelled)
                if not sold then return false, message end
            else
                local data = mining:FindPickaxe()
                if not data then return false, "Coloque uma picareta na barra rápida do jogo" end
                local pickaxeInfo = Global.SharedData.PlayerItems[data.Type]
                if #state.selectedOres == 0 then return false, "Selecione até dois minérios" end
                local target, selected
                local closestDistance = CONFIG.maxDistance + 0.001
                local eligible = 0
                local root = Global.PlayerCharacter.RootPart
                local selectedNames = {}
                for _, name in ipairs(state.selectedOres) do
                    local info = Global.SharedData.OreDepositInfo[name]
                    if info and (pickaxeInfo.PickaxeTier or 0) >= (info.NeedsTier or 0) then
                        eligible = eligible + 1
                        selectedNames[name] = true
                        for _, deposit in ipairs(map and {} or mining:GetDeposits(name)) do
                            if deposit.PrimaryPart and (blockedUntil[deposit] or 0) < os.clock() then
                                local distance = (deposit.PrimaryPart.Position - root.Position).Magnitude
                                if distance < closestDistance then
                                    target, selected, closestDistance = deposit, name, distance
                                end
                            end
                        end
                    end
                end
                if map then
                    for _, entry in ipairs(map) do
                        local deposit = entry.model
                        if selectedNames[entry.name] and deposit and deposit.Parent and deposit.PrimaryPart
                            and (blockedUntil[deposit] or 0) < os.clock() then
                            local distance = (entry.position - root.Position).Magnitude
                            if distance < closestDistance then
                                target, selected, closestDistance = deposit, entry.name, distance
                            end
                        end
                    end
                end
                if eligible == 0 then return false, "Picareta insuficiente para os minérios selecionados" end
                if not target then
                    state.activeOre = nil
                    status("Aguardando " .. table.concat(state.selectedOres, ", ") .. " em até 3200 studs")
                    for _ = 1, 20 do if cancelled() then break end; task.wait(0.1) end
                else
                    state.activeOre = selected
                    status("Indo ao depósito de " .. selected)
                    local arrived, travelError = navigation:ApproachDeposit(target, cancelled)
                    if navigation.haltReason then return false, navigation.haltReason end
                    if navigation.recoveryReason then return false, travelError end
                    if not arrived then
                        if cancelled() then break end
                        blockedUntil[target] = os.clock() + 60
                        status(travelError .. "; procurando outro depósito")
                    else
                        local item, equipError = mining:EquipPickaxe(8, cancelled)
                        if not item then return false, equipError end
                        local deadline = os.clock() + 150
                        local failures = 0
                        local dropOrigin=target.PrimaryPart and target.PrimaryPart.Position or root.Position
                        while not cancelled() and not full() and os.clock() < deadline do
                            local before = mining:GetDepositState(target)
                            if not before or before.remaining <= 0 then break end
                            status("Minerando " .. selected .. " | " .. before.remaining .. " restantes")
                            local look = before.primaryPart.Position
                            dropOrigin=look
                            local unitsBefore = sales:CountSellable()
                            local contact, mineError = mining:MineOnce(target, cancelled)
                            if cancelled() then break end
                            task.wait(0.4)
                            local after = mining:GetDepositState(target)
                            local confirmed = after and (after.remaining ~= before.remaining
                                or after.progress ~= before.progress)
                                or sales:CountSellable() > unitsBefore
                            if confirmed then failures = 0 else failures = failures + 1 end
                            if failures >= 3 then
                                blockedUntil[target] = os.clock() + 60
                                status(contact and "Golpes sem confirmação do servidor" or mineError)
                                break
                            end
                            rememberGems(look)
                            local drops = pickup and pickup:GetDropsNear(look, 32) or {}
                            if #drops > 0 then
                                local collected, collectError = collectNearby(look, cancelled)
                                if not collected then return false, collectError end
                                if not cancelled() and not full() and after and after.remaining > 0 then
                                    local returned, returnError = navigation:ApproachDeposit(target, cancelled)
                                    if navigation.haltReason then return false, navigation.haltReason end
                                    if navigation.recoveryReason then return false, returnError end
                                    if not returned then break end
                                end
                            end
                            updateInventory()
                        end
                        if not cancelled() then
                            -- The final strike can remove the deposit before its
                            -- gem pickup replicates. Keep the last real position.
                            task.wait(.35)
                            if not cancelled()then
                                local collected, collectError = collectNearby(dropOrigin, cancelled)
                                if not collected then return false, collectError end
                            end
                        end
                    end
                end
            end
            task.wait(0.1)
        end
        if state.running and generation == state.generation
            and (not characterReady() or Global.PlayerCharacter.Character ~= characterModel) then
            return false, "Personagem mudou; aguardando reaparecimento para continuar"
        end
        return true
    end

    local function supervise(generation)
        local function cancelled()
            return state.closed or not state.running or generation ~= state.generation
        end
        local function waitFor(seconds)
            local deadline = os.clock() + seconds
            repeat
                if cancelled() then return false end
                task.wait(math.min(0.1, math.max(0, deadline - os.clock())))
            until os.clock() >= deadline
            return not cancelled()
        end
        -- Mantem a picareta escolhida na mao tambem durante viagens e esperas.
        -- O adaptador serializa as trocas e aguarda o fim das picaretadas.
        state.equipWatchActive = true
        local equipToken = {}
        state.equipWatchToken = equipToken
        task.spawn(function()
            while not cancelled() and state.equipWatchToken == equipToken do
                if not state.recovering and characterReady() and not fallen() then
                    local model = Global.PlayerCharacter.Character
                    pcall(mining.EquipPickaxe, mining, 1.5, function()
                        return cancelled() or state.equipWatchToken ~= equipToken
                            or state.recovering or not characterReady()
                            or Global.PlayerCharacter.Character ~= model
                    end)
                end
                if not waitFor(0.75) then break end
            end
            if state.equipWatchToken == equipToken then state.equipWatchActive = false end
        end)
        while not cancelled() do
            state.recovering = true
            releaseActions()
            state.activeOre = nil
            state.recoveryError = nil
            local ready, message = true, nil
            if recovery then
                ready, message = recovery:WaitReady(cancelled, status)
            else
                while not characterReady() or fallen() do
                    status("Aguardando o personagem se recuperar")
                    if not waitFor(0.1) then ready = false; break end
                end
            end
            if cancelled() then break end
            if ready then
                local container = inventory()
                if not container or not container.IsLoaded then
                    ready, message = false, "Aguardando inventário carregar"
                end
            end
            if ready and mining:FindPickaxe() then
                local item, equipError = mining:EquipPickaxe(8, cancelled)
                if not item and not full() then ready, message = false, equipError end
            elseif ready and not full() then
                ready, message = false, "Aguardando uma picareta no inventário"
            end
            if cancelled() then break end
            if ready then
                navigation.haltReason = nil
                navigation.recoveryReason = nil
                state.recovering = false
                local ok, result, resultMessage = pcall(worker, generation)
                message = ok and resultMessage or tostring(result)
            end
            if cancelled() then break end
            state.recovering = true
            state.recoveryCount = state.recoveryCount + 1
            releaseActions()
            status(state.recoveryError or message or "Recalculando a rota para continuar")
            if not waitFor(2) then break end
        end
        releaseActions()
    end

    function api:Start()
        if state.closed or state.running then return false end
        if state.workerActive then status("Aguarde a parada anterior terminar"); return false end
        if #state.selectedOres == 0 then status("Selecione até dois minérios"); return false end
        state.generation = state.generation + 1
        local generation = state.generation
        navigation.haltReason = nil
        state.running = true
        state.workerActive = true
        state.recovering = true
        ui:SetRunning(true)
        status("Iniciando")
        task.spawn(function()
            local function cancelled()
                return state.closed or not state.running or generation ~= state.generation
            end
            while not cancelled() do
                local ok, message = pcall(supervise, generation)
                if cancelled() then break end
                if not ok then
                    state.recovering = true
                    state.equipWatchToken = nil
                    releaseActions()
                    status("Recuperando a rotina: " .. tostring(message))
                    local deadline = os.clock() + 2
                    repeat task.wait(0.1) until cancelled() or os.clock() >= deadline
                end
            end
            state.workerActive = false
        end)
        return true
    end

    function api:Destroy()
        if state.closed then return end
        self:Stop()
        state.closed = true
        if recovery then recovery:Destroy() end
        for _, connection in ipairs(connections) do connection:Disconnect() end
        if ui then ui:Destroy() end
        if environment.TWWMiner == self then environment.TWWMiner = nil end
    end

    local function refresh()
        local ores = {}
        for _,name in ipairs(ORE_CHOICES)do
            if Global.SharedData.OreDepositInfo[name]then ores[#ores+1]=name end
        end
        if ui then ui:SetOres(ores) end
    end

    local reports=Reports and Reports.create(function()
        local snapshot=api:GetState()
        local pc=Global.PlayerCharacter
        local root=pc and pc.RootPart
        snapshot.navigation.message=snapshot.navigation.message and translate(snapshot.navigation.message)
        return {placeId=game.PlaceId,status=snapshot.status,selectedOres=snapshot.selectedOres,
            flightSpeed=snapshot.flightSpeed,navigation=snapshot.navigation,
            pendingGemDrops=snapshot.pendingGemDrops,
            recovering=snapshot.recovering,recoveryCount=snapshot.recoveryCount,
            position=root and tostring(root.Position),
            climbing=pc and pc.Climbing,magnetized=pc and pc.CurrentLadderMagnetized,
            ladder=pc and pc.CurrentLadder and pc.CurrentLadder.Part and pc.CurrentLadder.Part:GetFullName()}
    end)

    ui = UI.create({
        oreLabels=ORE_LABELS,
        oreWeights=ORE_WEIGHTS,
        translateStatus=translate,
        reportEndpoint=Reports and Reports.ENDPOINT or "",
        reportContact=Reports and Reports.CONTACT_URL or "",
        onReportCooldown=function() return reports:Remaining() end,
        onSendReport=function(text) return reports:Send(text) end,
        onReportContact=function() return reports:Contact() end,
        flightSpeed = CONFIG.flightSpeed,
        onFlightSpeed = function(value) api:SetFlightSpeed(value) end,
        onToggle = function(enabled)
            if enabled then
                if not api:Start() then ui:SetRunning(false) end
            else api:Stop("Parado") end
        end,
        onSelect = function(ores)
            api:SetSelectedOres(ores)
        end,
        onRefresh = refresh,
        onClose = function() api:Destroy() end,
    })
    refresh()
    refreshOreMap()
    updateInventory()
    status("Escolha até 2 minérios e clique Iniciar")
    for _, signal in ipairs({inventory().ItemAdded, inventory().ItemRemoved, inventory().SizeChanged}) do
        connections[#connections + 1] = signal:Connect(updateInventory)
    end
    connections[#connections + 1] = game:GetService("UserInputService").InputBegan:Connect(function(input, processed)
        if input.KeyCode == Enum.KeyCode.F8 then api:Stop("Parado por F8") end
    end)
    environment.TWWMiner = api
    return api
end

end)()
return launch(UI, Mining, Navigation, Sales, Pickup, Flight, Recovery, RoutePlanner, Ladder, TerrainPath, Streaming, Passages, English, Reports)
end


local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")
local player = Players.LocalPlayer
assert(player, "Run on a Roblox client")
local parent = player:WaitForChild("PlayerGui")
local old = parent:FindFirstChild("TWWKeyGate")
if old then old:Destroy() end
local gui = Instance.new("ScreenGui")
gui.Name = "TWWKeyGate"
gui.ResetOnSpawn = false
gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
gui.DisplayOrder = 40
gui.Parent = parent

-- GameSense-inspired: square geometry, dense charcoal panels and red accents.
local C = {
    background = Color3.fromRGB(14, 14, 14),
    panel = Color3.fromRGB(23, 23, 23),
    field = Color3.fromRGB(29, 29, 29),
    border = Color3.fromRGB(54, 54, 54),
    red = Color3.fromRGB(215, 42, 55),
    redDark = Color3.fromRGB(115, 25, 35),
    text = Color3.fromRGB(229, 229, 229),
    muted = Color3.fromRGB(148, 148, 148),
}
local function make(class, props, holder)
    local obj = Instance.new(class)
    for k, v in pairs(props) do obj[k] = v end
    obj.Parent = holder
    return obj
end
local function stroke(obj, color, thickness)
    return make("UIStroke", {Color = color or C.border, Thickness = thickness or 1, ApplyStrokeMode = Enum.ApplyStrokeMode.Border}, obj)
end
local frame = make("Frame", {
    Name = "KeyWindow", AnchorPoint = Vector2.new(0.5, 0.5),
    Position = UDim2.new(0.5, 0, 0.5, 0), Size = UDim2.fromOffset(390, 254),
    BackgroundColor3 = C.background, BorderSizePixel = 0, Active = true,
}, gui)
stroke(frame, Color3.fromRGB(3, 3, 3), 2)
make("Frame", {Name = "InnerOutline", Position = UDim2.fromOffset(4, 4),
    Size = UDim2.new(1, -8, 1, -8), BackgroundTransparency = 1, BorderSizePixel = 0}, frame)
stroke(frame.InnerOutline, C.border)
make("Frame", {Name = "TopAccent", Position = UDim2.fromOffset(7, 7),
    Size = UDim2.new(1, -14, 0, 3), BackgroundColor3 = C.red, BorderSizePixel = 0}, frame)
make("Frame", {Name = "HeaderDivider", Position = UDim2.fromOffset(14, 50),
    Size = UDim2.new(1, -28, 0, 1), BackgroundColor3 = C.border, BorderSizePixel = 0}, frame)
local function text(class, label, pos, size, fontSize, color, bg)
    local o = make(class, {
        Text = label, Position = pos, Size = size,
        Font = Enum.Font.Code, TextSize = fontSize or 13,
        TextColor3 = color or C.text,
        BackgroundColor3 = bg or C.panel, BorderSizePixel = 0,
        TextXAlignment = Enum.TextXAlignment.Center,
    }, frame)
    if class == "TextLabel" then o.BackgroundTransparency = 1 else stroke(o) end
    return o
end
local title = text("TextLabel", "TWW AUTOMINER", UDim2.fromOffset(19, 18), UDim2.fromOffset(235, 23), 17)
title.TextXAlignment = Enum.TextXAlignment.Left
local subtitle = text("TextLabel", "KEY SYSTEM  /  12H", UDim2.fromOffset(233, 22), UDim2.fromOffset(137, 16), 11, C.red)
subtitle.TextXAlignment = Enum.TextXAlignment.Right
local fieldLabel = text("TextLabel", "LICENSE KEY", UDim2.fromOffset(19, 66), UDim2.fromOffset(200, 17), 12, C.muted)
fieldLabel.TextXAlignment = Enum.TextXAlignment.Left
local input = text("TextBox", "", UDim2.fromOffset(19, 89), UDim2.fromOffset(352, 37), 13, C.text, C.field)
input.PlaceholderText = "Paste your Work.ink key..."
input.PlaceholderColor3 = C.muted
input.ClearTextOnFocus = false
input.TextXAlignment = Enum.TextXAlignment.Left
make("UIPadding", {PaddingLeft = UDim.new(0, 10), PaddingRight = UDim.new(0, 10)}, input)
local get = text("TextButton", "GET KEY", UDim2.fromOffset(19, 139), UDim2.fromOffset(170, 34), 13, C.text, C.panel)
local verify = text("TextButton", "VERIFY KEY", UDim2.fromOffset(201, 139), UDim2.fromOffset(170, 34), 13, C.text, C.redDark)
stroke(verify, C.red)
local statusPanel = make("Frame", {Name = "StatusPanel", Position = UDim2.fromOffset(19, 186),
    Size = UDim2.fromOffset(352, 42), BackgroundColor3 = C.panel, BorderSizePixel = 0}, frame)
stroke(statusPanel)
local status = make("TextLabel", {Name = "Status", Text = "Get a key, then paste it here.",
    Position = UDim2.fromOffset(10, 4), Size = UDim2.new(1, -20, 1, -8),
    BackgroundTransparency = 1, Font = Enum.Font.Code, TextSize = 12,
    TextColor3 = C.muted, TextXAlignment = Enum.TextXAlignment.Left,
    TextYAlignment = Enum.TextYAlignment.Center, TextWrapped = true,
}, statusPanel)
local footer = text("TextLabel", "Made by: z1xl", UDim2.fromOffset(19, 235), UDim2.fromOffset(352, 12), 10, C.muted)
footer.TextXAlignment = Enum.TextXAlignment.Left

-- Drag from header, without changing the original autofarm UI.
local UIS = game:GetService("UserInputService")
local dragStart, windowStart, dragging, dragTouch
local dragArea = make("Frame", {Name = "DragArea", Position = UDim2.fromOffset(12, 13),
    Size = UDim2.fromOffset(356, 33), BackgroundTransparency = 1, Active = true}, frame)
-- The transparent header overlay is behind no functional buttons.
local headerText = make("TextLabel", {Text = "TWW AUTOMINER", Position = UDim2.fromOffset(7, 5),
    Size = UDim2.fromOffset(235, 23), BackgroundTransparency = 1,
    Font = Enum.Font.Code, TextSize = 17, TextColor3 = C.text,
    TextXAlignment = Enum.TextXAlignment.Left}, dragArea)
title.Visible = false
local headerSub = make("TextLabel", {Text = "KEY SYSTEM  /  12H", Position = UDim2.fromOffset(221, 9),
    Size = UDim2.fromOffset(137, 16), BackgroundTransparency = 1,
    Font = Enum.Font.Code, TextSize = 11, TextColor3 = C.red,
    TextXAlignment = Enum.TextXAlignment.Right}, dragArea)
subtitle.Visible = false
dragArea.InputBegan:Connect(function(i)
    if i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragTouch = i.UserInputType == Enum.UserInputType.Touch and i or nil
        dragStart = i.Position
        windowStart = frame.Position
    end
end)
UIS.InputChanged:Connect(function(i)
    if dragging and gui.Parent and (i.UserInputType == Enum.UserInputType.MouseMovement and not dragTouch or i == dragTouch) then
        local d = i.Position - dragStart
        frame.Position = UDim2.new(windowStart.X.Scale, windowStart.X.Offset + d.X,
            windowStart.Y.Scale, windowStart.Y.Offset + d.Y)
    end
end)
UIS.InputEnded:Connect(function(i)
    if i.UserInputType == Enum.UserInputType.MouseButton1 or i == dragTouch then
        dragging, dragTouch = false, nil
    end
end)
get.Activated:Connect(function()
    local copy = setclipboard or toclipboard
    if type(copy)=="function" then
        copy(WORKINK_LINK)
        status.Text="Link copied! Open it in your browser."
    else
        status.Text="Open: "..WORKINK_LINK
    end
end)
-- Local 12-hour license. This is convenience, not tamper-proof DRM.
local LICENSE_SECONDS = 12 * 60 * 60
local LICENSE_FILE = "tww_autominer_license_" .. tostring(player.UserId) .. ".json"
local function licenseValid()
    if type(readfile) ~= "function" or type(isfile) ~= "function" then return false end
    local ok, data = pcall(function()
        if not isfile(LICENSE_FILE) then return nil end
        return HttpService:JSONDecode(readfile(LICENSE_FILE))
    end)
    local now = os.time()
    return ok and type(data) == "table"
        and tostring(data.userId) == tostring(player.UserId)
        and tostring(data.linkId) == EXPECTED_LINK_ID
        and type(data.activatedAt) == "number"
        and type(data.expiresAt) == "number"
        and now >= data.activatedAt
        and now < data.expiresAt
        and data.expiresAt - data.activatedAt == LICENSE_SECONDS
end
local function saveLicense()
    if type(writefile) ~= "function" then return false end
    local now = os.time()
    return pcall(function()
        writefile(LICENSE_FILE, HttpService:JSONEncode({
            userId = player.UserId,
            linkId = EXPECTED_LINK_ID,
            activatedAt = now,
            expiresAt = now + LICENSE_SECONDS,
        }))
    end)
end
local function unlock()
    if not gui.Parent then return end
    gui:Destroy()
    local started, err = pcall(startOriginal)
    if not started then warn("TWW Autominer startup failed: " .. tostring(err)) end
end
if licenseValid() then
    status.Text = "12-hour license active. Starting..."
    task.defer(unlock)
end
local busy=false
verify.Activated:Connect(function()
    if busy then return end
    local key=input.Text:match("^%s*(.-)%s*$")
    if key=="" then status.Text="Enter a key first.";return end
    local httpRequest = request or http_request or (syn and syn.request)
    if type(httpRequest)~="function" then
        status.Text="Executor HTTP request is unavailable."
        return
    end
    busy=true
    status.Text="Checking key online..."
    task.spawn(function()
        local ok, result = pcall(function()
            local response=httpRequest({
                Url=VERIFY_BASE..HttpService:UrlEncode(key), Method="GET"
            })
            if not response or not response.Success then error("HTTP request failed") end
            return HttpService:JSONDecode(response.Body)
        end)
        busy=false
        if not gui.Parent then return end
        if not ok then
            status.Text="Verification failed: network/API error."
            return
        end
        -- Fail closed: only keys issued for THIS Work.ink link are accepted.
        -- Confirm the real API response schema before using in production.
        if type(result)=="table" and result.valid==true
            and type(result.info)=="table"
            and tostring(result.info.linkId or "")==EXPECTED_LINK_ID
            and result.deleted==false
            and type(result.info.expiresAfter)=="number"
            and result.info.expiresAfter > DateTime.now().UnixTimestampMillis then
            local saved = saveLicense()
            status.Text = saved and "Key accepted! 12-hour license saved." or "Key accepted! Local save unavailable."
            unlock()
        else
            status.Text="Invalid key or link ID not confirmed by API."
        end
    end)
end)
