type

  Event* = ref EventObj
  EventObj {. importc .} = object of RootObj
    `type`*: cstring
    `target`*: EventTarget
    `currentTarget`*: EventTarget
    `eventPhase`*: uint16
    `cancelBubble`*: bool
    `bubbles`*: bool
    `cancelable`*: bool
    `defaultPrevented`*: bool
    `composed`*: bool
    `isTrusted`*: bool

  EventInit* = ref EventInitObj
  EventInitObj {. importc .} = object of RootObj

  CustomEvent* = ref CustomEventObj
  CustomEventObj {. importc .} = object of EventObj

  CustomEventInit* = ref CustomEventInitObj
  CustomEventInitObj {. importc .} = object of EventInitObj

  EventTarget* = ref EventTargetObj
  EventTargetObj {. importc .} = object of RootObj

  EventListener* = ref EventListenerObj
  EventListenerObj {. importc .} = object of RootObj

  EventListenerOptions* = ref EventListenerOptionsObj
  EventListenerOptionsObj {. importc .} = object of RootObj

  AddEventListenerOptions* = ref AddEventListenerOptionsObj
  AddEventListenerOptionsObj {. importc .} = object of EventListenerOptionsObj

  AbortController* = ref AbortControllerObj
  AbortControllerObj {. importc .} = object of RootObj
    `signal`*: AbortSignal

  AbortSignal* = ref AbortSignalObj
  AbortSignalObj {. importc .} = object of EventTargetObj
    `aborted`*: bool

  NonElementParentNode* = ref NonElementParentNodeObj
  NonElementParentNodeObj {. importc .} = object of RootObj

  DocumentOrShadowRoot* = ref DocumentOrShadowRootObj
  DocumentOrShadowRootObj {. importc .} = object of RootObj

  ParentNode* = ref ParentNodeObj
  ParentNodeObj {. importc .} = object of RootObj
    `children`*: HTMLCollection
    `firstElementChild`*: Element
    `lastElementChild`*: Element
    `childElementCount`*: uint32

  NonDocumentTypeChildNode* = ref NonDocumentTypeChildNodeObj
  NonDocumentTypeChildNodeObj {. importc .} = object of RootObj
    `previousElementSibling`*: Element
    `nextElementSibling`*: Element

  ChildNode* = ref ChildNodeObj
  ChildNodeObj {. importc .} = object of RootObj

  Slotable* = ref SlotableObj
  SlotableObj {. importc .} = object of RootObj
    `assignedSlot`*: HTMLSlotElement

  NodeList* = ref NodeListObj
  NodeListObj {. importc .} = object of RootObj
    `length`*: uint32

  HTMLCollection* = ref HTMLCollectionObj
  HTMLCollectionObj {. importc .} = object of RootObj
    `length`*: uint32

  MutationObserver* = ref MutationObserverObj
  MutationObserverObj {. importc .} = object of RootObj

  MutationObserverInit* = ref MutationObserverInitObj
  MutationObserverInitObj {. importc .} = object of RootObj
    `attributes`*: bool
    `characterData`*: bool
    `attributeOldValue`*: bool
    `characterDataOldValue`*: bool

  MutationRecord* = ref MutationRecordObj
  MutationRecordObj {. importc .} = object of RootObj
    `type`*: cstring
    `target`*: Node
    `addedNodes`*: NodeList
    `removedNodes`*: NodeList
    `previousSibling`*: Node
    `nextSibling`*: Node
    `attributeName`*: cstring
    `attributeNamespace`*: cstring
    `oldValue`*: cstring

  Node* = ref NodeObj
  NodeObj {. importc .} = object of EventTargetObj
    `nodeType`*: uint16
    `nodeName`*: cstring
    `baseURI`*: cstring
    `isConnected`*: bool
    `ownerDocument`*: Document
    `parentNode`*: Node
    `parentElement`*: Element
    `childNodes`*: NodeList
    `firstChild`*: Node
    `lastChild`*: Node
    `previousSibling`*: Node
    `nextSibling`*: Node
    `nodeValue`*: cstring
    `textContent`*: cstring

  GetRootNodeOptions* = ref GetRootNodeOptionsObj
  GetRootNodeOptionsObj {. importc .} = object of RootObj

  Document* = ref DocumentObj
  DocumentObj {. importc .} = object of NodeObj
    `implementation`*: DOMImplementation
    `URL`*: cstring
    `documentURI`*: cstring
    `origin`*: cstring
    `compatMode`*: cstring
    `characterSet`*: cstring
    `charset`*: cstring
    `inputEncoding`*: cstring
    `contentType`*: cstring
    `doctype`*: DocumentType
    `documentElement`*: Element
    `location`*: Location
    `domain`*: cstring
    `referrer`*: cstring
    `cookie`*: cstring
    `lastModified`*: cstring
    `readyState`*: DocumentReadyState
    `title`*: cstring
    `dir`*: cstring
    `body`*: HTMLElement
    `head`*: HTMLHeadElement
    `images`*: HTMLCollection
    `embeds`*: HTMLCollection
    `plugins`*: HTMLCollection
    `links`*: HTMLCollection
    `forms`*: HTMLCollection
    `scripts`*: HTMLCollection
    `defaultView`*: Window
    `activeElement`*: Element
    `designMode`*: cstring
    `children`*: HTMLCollection
    `firstElementChild`*: Element
    `lastElementChild`*: Element
    `childElementCount`*: uint32

  XMLDocument* = ref XMLDocumentObj
  XMLDocumentObj {. importc .} = object of DocumentObj

  ElementCreationOptions* = ref ElementCreationOptionsObj
  ElementCreationOptionsObj {. importc .} = object of RootObj
    `is`*: cstring

  DOMImplementation* = ref DOMImplementationObj
  DOMImplementationObj {. importc .} = object of RootObj

  DocumentType* = ref DocumentTypeObj
  DocumentTypeObj {. importc .} = object of NodeObj
    `name`*: cstring
    `publicId`*: cstring
    `systemId`*: cstring

  DocumentFragment* = ref DocumentFragmentObj
  DocumentFragmentObj {. importc .} = object of NodeObj
    `children`*: HTMLCollection
    `firstElementChild`*: Element
    `lastElementChild`*: Element
    `childElementCount`*: uint32

  ShadowRoot* = ref ShadowRootObj
  ShadowRootObj {. importc .} = object of DocumentFragmentObj
    `mode`*: ShadowRootMode
    `host`*: Element

  ShadowRootMode* = cstring

  Element* = ref ElementObj
  ElementObj {. importc .} = object of NodeObj
    `namespaceURI`*: cstring
    `prefix`*: cstring
    `localName`*: cstring
    `tagName`*: cstring
    `id`*: cstring
    `className`*: cstring
    `classList`*: DOMTokenList
    `slot`*: cstring
    `attributes`*: NamedNodeMap
    `shadowRoot`*: ShadowRoot
    `children`*: HTMLCollection
    `firstElementChild`*: Element
    `lastElementChild`*: Element
    `childElementCount`*: uint32
    `previousElementSibling`*: Element
    `nextElementSibling`*: Element
    `assignedSlot`*: HTMLSlotElement

  ShadowRootInit* = ref ShadowRootInitObj
  ShadowRootInitObj {. importc .} = object of RootObj
    `mode`*: ShadowRootMode

  NamedNodeMap* = ref NamedNodeMapObj
  NamedNodeMapObj {. importc .} = object of RootObj
    `length`*: uint32

  Attr* = ref AttrObj
  AttrObj {. importc .} = object of NodeObj
    `namespaceURI`*: cstring
    `prefix`*: cstring
    `localName`*: cstring
    `name`*: cstring
    `value`*: cstring
    `ownerElement`*: Element
    `specified`*: bool

  CharacterData* = ref CharacterDataObj
  CharacterDataObj {. importc .} = object of NodeObj
    `data`*: cstring
    `length`*: uint32
    `previousElementSibling`*: Element
    `nextElementSibling`*: Element

  Text* = ref TextObj
  TextObj {. importc .} = object of CharacterDataObj
    `wholeText`*: cstring
    `assignedSlot`*: HTMLSlotElement

  CDATASection* = ref CDATASectionObj
  CDATASectionObj {. importc .} = object of TextObj

  ProcessingInstruction* = ref ProcessingInstructionObj
  ProcessingInstructionObj {. importc .} = object of CharacterDataObj
    `target`*: cstring

  Comment* = ref CommentObj
  CommentObj {. importc .} = object of CharacterDataObj

  Range* = ref RangeObj
  RangeObj {. importc .} = object of RootObj
    `startContainer`*: Node
    `startOffset`*: uint32
    `endContainer`*: Node
    `endOffset`*: uint32
    `collapsed`*: bool
    `commonAncestorContainer`*: Node

  NodeIterator* = ref NodeIteratorObj
  NodeIteratorObj {. importc .} = object of RootObj
    `root`*: Node
    `referenceNode`*: Node
    `pointerBeforeReferenceNode`*: bool
    `whatToShow`*: uint32
    `filter`*: NodeFilter

  TreeWalker* = ref TreeWalkerObj
  TreeWalkerObj {. importc .} = object of RootObj
    `root`*: Node
    `whatToShow`*: uint32
    `filter`*: NodeFilter
    `currentNode`*: Node

  NodeFilter* = ref NodeFilterObj
  NodeFilterObj {. importc .} = object of RootObj

  DOMTokenList* = ref DOMTokenListObj
  DOMTokenListObj {. importc .} = object of RootObj
    `length`*: uint32

  HTMLElement* = ref HTMLElementObj
  HTMLElementObj {. importc .} = object of ElementObj
    `title`*: cstring
    `lang`*: cstring
    `translate`*: bool
    `dir`*: cstring
    `hidden`*: bool
    `tabIndex`*: int32
    `accessKey`*: cstring
    `accessKeyLabel`*: cstring
    `draggable`*: bool
    `spellcheck`*: bool
    `innerText`*: cstring

  HTMLUnknownElement* = ref HTMLUnknownElementObj
  HTMLUnknownElementObj {. importc .} = object of HTMLElementObj

  HTMLSlotElement* = ref HTMLSlotElementObj
  HTMLSlotElementObj {. importc .} = object of HTMLElementObj
    `name`*: cstring

  AssignedNodesOptions* = ref AssignedNodesOptionsObj
  AssignedNodesOptionsObj {. importc .} = object of RootObj

  DOMStringList* = ref DOMStringListObj
  DOMStringListObj {. importc .} = object of RootObj
    `length`*: uint32

  Location* = ref LocationObj
  LocationObj {. importc .} = object of RootObj
    `origin`*: cstring
    `protocol`*: cstring
    `host`*: cstring
    `hostname`*: cstring
    `port`*: cstring
    `pathname`*: cstring
    `search`*: cstring
    `hash`*: cstring
    `ancestorOrigins`*: DOMStringList

  HTMLHeadElement* = ref HTMLHeadElementObj
  HTMLHeadElementObj {. importc .} = object of HTMLElementObj

  DocumentReadyState* = cstring

  ScrollRestoration* = cstring

  History* = ref HistoryObj
  HistoryObj {. importc .} = object of RootObj
    `length`*: uint32
    `scrollRestoration`*: ScrollRestoration

  Window* = ref WindowObj
  WindowObj {. importc .} = object of EventTargetObj
    `window`*: Window
    `self`*: Window
    `document`*: Document
    `name`*: cstring
    `location`*: Location
    `history`*: History
    `status`*: cstring
    `closed`*: bool
    `frames`*: Window
    `length`*: uint32
    `top`*: Window
    `parent`*: Window
    `frameElement`*: Element
    `origin`*: cstring

  WindowOrWorkerGlobalScope* = ref WindowOrWorkerGlobalScopeObj
  WindowOrWorkerGlobalScopeObj {. importc .} = object of RootObj
    `origin`*: cstring

{. push importcpp .}

proc `stopPropagation`*( self: Event ): void

proc `stopImmediatePropagation`*( self: Event ): void

proc `preventDefault`*( self: Event ): void

proc `initEvent`*( self: Event, `type`: cstring ): void
proc `initEvent`*( self: Event, `type`: cstring, `bubbles`: bool ): void
proc `initEvent`*( self: Event, `type`: cstring, `bubbles`: bool, `cancelable`: bool ): void

proc `dispatchEvent`*( self: EventTarget, `event`: Event ): bool

proc `handleEvent`*( self: EventListener, `event`: Event ): void

proc `abort`*( self: AbortController ): void

proc `getElementById`*( self: NonElementParentNode, `elementId`: cstring ): Element

proc `prepend`*( self: ParentNode ): void

proc `append`*( self: ParentNode ): void

proc `querySelector`*( self: ParentNode, `selectors`: cstring ): Element

proc `querySelectorAll`*( self: ParentNode, `selectors`: cstring ): NodeList

proc `before`*( self: ChildNode ): void

proc `after`*( self: ChildNode ): void

proc `replaceWith`*( self: ChildNode ): void

proc `remove`*( self: ChildNode ): void

proc `observe`*( self: MutationObserver, `target`: Node ): void
proc `observe`*( self: MutationObserver, `target`: Node, `options`: MutationObserverInit ): void

proc `disconnect`*( self: MutationObserver ): void

proc `getRootNode`*( self: Node ): Node
proc `getRootNode`*( self: Node, `options`: GetRootNodeOptions ): Node

proc `hasChildNodes`*( self: Node ): bool

proc `normalize`*( self: Node ): void

proc `cloneNode`*( self: Node ): Node
proc `cloneNode`*( self: Node, `deep`: bool ): Node

proc `isEqualNode`*( self: Node, `otherNode`: Node ): bool

proc `isSameNode`*( self: Node, `otherNode`: Node ): bool

proc `compareDocumentPosition`*( self: Node, `other`: Node ): uint16

proc `contains`*( self: Node, `other`: Node ): bool

proc `lookupPrefix`*( self: Node, `namespace`: cstring ): cstring

proc `lookupNamespaceURI`*( self: Node, `prefix`: cstring ): cstring

proc `isDefaultNamespace`*( self: Node, `namespace`: cstring ): bool

proc `insertBefore`*( self: Node, `node`: Node, `child`: Node ): Node

proc `appendChild`*( self: Node, `node`: Node ): Node

proc `replaceChild`*( self: Node, `node`: Node, `child`: Node ): Node

proc `removeChild`*( self: Node, `child`: Node ): Node

proc `getElementsByTagName`*( self: Document, `qualifiedName`: cstring ): HTMLCollection

proc `getElementsByTagNameNS`*( self: Document, `namespace`: cstring, `localName`: cstring ): HTMLCollection

proc `getElementsByClassName`*( self: Document, `classNames`: cstring ): HTMLCollection

proc `createElement`*( self: Document, `localName`: cstring ): Element
proc `createElement`*( self: Document, `localName`: cstring, `options`: ElementCreationOptions ): Element

proc `createElementNS`*( self: Document, `namespace`: cstring, `qualifiedName`: cstring ): Element
proc `createElementNS`*( self: Document, `namespace`: cstring, `qualifiedName`: cstring, `options`: ElementCreationOptions ): Element

proc `createDocumentFragment`*( self: Document ): DocumentFragment

proc `createTextNode`*( self: Document, `data`: cstring ): Text

proc `createCDATASection`*( self: Document, `data`: cstring ): CDATASection

proc `createComment`*( self: Document, `data`: cstring ): Comment

proc `createProcessingInstruction`*( self: Document, `target`: cstring, `data`: cstring ): ProcessingInstruction

proc `importNode`*( self: Document, `node`: Node ): Node
proc `importNode`*( self: Document, `node`: Node, `deep`: bool ): Node

proc `adoptNode`*( self: Document, `node`: Node ): Node

proc `createAttribute`*( self: Document, `localName`: cstring ): Attr

proc `createAttributeNS`*( self: Document, `namespace`: cstring, `qualifiedName`: cstring ): Attr

proc `createEvent`*( self: Document, `interface`: cstring ): Event

proc `createRange`*( self: Document ): Range

proc `createNodeIterator`*( self: Document, `root`: Node ): NodeIterator
proc `createNodeIterator`*( self: Document, `root`: Node, `whatToShow`: uint32 ): NodeIterator
proc `createNodeIterator`*( self: Document, `root`: Node, `whatToShow`: uint32, `filter`: NodeFilter ): NodeIterator

proc `createTreeWalker`*( self: Document, `root`: Node ): TreeWalker
proc `createTreeWalker`*( self: Document, `root`: Node, `whatToShow`: uint32 ): TreeWalker
proc `createTreeWalker`*( self: Document, `root`: Node, `whatToShow`: uint32, `filter`: NodeFilter ): TreeWalker

proc `getElementsByName`*( self: Document, `elementName`: cstring ): NodeList

proc `open`*( self: Document ): Document
proc `open`*( self: Document, `type`: cstring ): Document
proc `open`*( self: Document, `type`: cstring, `replace`: cstring ): Document

proc `open`*( self: Document, `url`: cstring, `name`: cstring, `features`: cstring ): Window

proc `close`*( self: Document ): void

proc `write`*( self: Document ): void

proc `writeln`*( self: Document ): void

proc `hasFocus`*( self: Document ): bool

proc `execCommand`*( self: Document, `commandId`: cstring ): bool
proc `execCommand`*( self: Document, `commandId`: cstring, `showUI`: bool ): bool
proc `execCommand`*( self: Document, `commandId`: cstring, `showUI`: bool, `value`: cstring ): bool

proc `queryCommandEnabled`*( self: Document, `commandId`: cstring ): bool

proc `queryCommandIndeterm`*( self: Document, `commandId`: cstring ): bool

proc `queryCommandState`*( self: Document, `commandId`: cstring ): bool

proc `queryCommandSupported`*( self: Document, `commandId`: cstring ): bool

proc `queryCommandValue`*( self: Document, `commandId`: cstring ): cstring

proc `getElementById`*( self: Document, `elementId`: cstring ): Element

proc `prepend`*( self: Document ): void

proc `append`*( self: Document ): void

proc `querySelector`*( self: Document, `selectors`: cstring ): Element

proc `querySelectorAll`*( self: Document, `selectors`: cstring ): NodeList

proc `createDocumentType`*( self: DOMImplementation, `qualifiedName`: cstring, `publicId`: cstring, `systemId`: cstring ): DocumentType

proc `createDocument`*( self: DOMImplementation, `namespace`: cstring, `qualifiedName`: cstring ): XMLDocument
proc `createDocument`*( self: DOMImplementation, `namespace`: cstring, `qualifiedName`: cstring, `doctype`: DocumentType ): XMLDocument

proc `createHTMLDocument`*( self: DOMImplementation ): Document
proc `createHTMLDocument`*( self: DOMImplementation, `title`: cstring ): Document

proc `hasFeature`*( self: DOMImplementation ): bool

proc `before`*( self: DocumentType ): void

proc `after`*( self: DocumentType ): void

proc `replaceWith`*( self: DocumentType ): void

proc `remove`*( self: DocumentType ): void

proc `getElementById`*( self: DocumentFragment, `elementId`: cstring ): Element

proc `prepend`*( self: DocumentFragment ): void

proc `append`*( self: DocumentFragment ): void

proc `querySelector`*( self: DocumentFragment, `selectors`: cstring ): Element

proc `querySelectorAll`*( self: DocumentFragment, `selectors`: cstring ): NodeList

proc `hasAttributes`*( self: Element ): bool

proc `getAttribute`*( self: Element, `qualifiedName`: cstring ): cstring

proc `getAttributeNS`*( self: Element, `namespace`: cstring, `localName`: cstring ): cstring

proc `setAttribute`*( self: Element, `qualifiedName`: cstring, `value`: cstring ): void

proc `setAttributeNS`*( self: Element, `namespace`: cstring, `qualifiedName`: cstring, `value`: cstring ): void

proc `removeAttribute`*( self: Element, `qualifiedName`: cstring ): void

proc `removeAttributeNS`*( self: Element, `namespace`: cstring, `localName`: cstring ): void

proc `hasAttribute`*( self: Element, `qualifiedName`: cstring ): bool

proc `hasAttributeNS`*( self: Element, `namespace`: cstring, `localName`: cstring ): bool

proc `getAttributeNode`*( self: Element, `qualifiedName`: cstring ): Attr

proc `getAttributeNodeNS`*( self: Element, `namespace`: cstring, `localName`: cstring ): Attr

proc `setAttributeNode`*( self: Element, `attr`: Attr ): Attr

proc `setAttributeNodeNS`*( self: Element, `attr`: Attr ): Attr

proc `removeAttributeNode`*( self: Element, `attr`: Attr ): Attr

proc `closest`*( self: Element, `selectors`: cstring ): Element

proc `matches`*( self: Element, `selectors`: cstring ): bool

proc `webkitMatchesSelector`*( self: Element, `selectors`: cstring ): bool

proc `getElementsByTagName`*( self: Element, `qualifiedName`: cstring ): HTMLCollection

proc `getElementsByTagNameNS`*( self: Element, `namespace`: cstring, `localName`: cstring ): HTMLCollection

proc `getElementsByClassName`*( self: Element, `classNames`: cstring ): HTMLCollection

proc `insertAdjacentElement`*( self: Element, `where`: cstring, `element`: Element ): Element

proc `insertAdjacentText`*( self: Element, `where`: cstring, `data`: cstring ): void

proc `prepend`*( self: Element ): void

proc `append`*( self: Element ): void

proc `querySelector`*( self: Element, `selectors`: cstring ): Element

proc `querySelectorAll`*( self: Element, `selectors`: cstring ): NodeList

proc `before`*( self: Element ): void

proc `after`*( self: Element ): void

proc `replaceWith`*( self: Element ): void

proc `remove`*( self: Element ): void

proc `getNamedItemNS`*( self: NamedNodeMap, `namespace`: cstring, `localName`: cstring ): Attr

proc `setNamedItem`*( self: NamedNodeMap, `attr`: Attr ): Attr

proc `setNamedItemNS`*( self: NamedNodeMap, `attr`: Attr ): Attr

proc `removeNamedItem`*( self: NamedNodeMap, `qualifiedName`: cstring ): Attr

proc `removeNamedItemNS`*( self: NamedNodeMap, `namespace`: cstring, `localName`: cstring ): Attr

proc `substringData`*( self: CharacterData, `offset`: uint32, `count`: uint32 ): cstring

proc `appendData`*( self: CharacterData, `data`: cstring ): void

proc `insertData`*( self: CharacterData, `offset`: uint32, `data`: cstring ): void

proc `deleteData`*( self: CharacterData, `offset`: uint32, `count`: uint32 ): void

proc `replaceData`*( self: CharacterData, `offset`: uint32, `count`: uint32, `data`: cstring ): void

proc `before`*( self: CharacterData ): void

proc `after`*( self: CharacterData ): void

proc `replaceWith`*( self: CharacterData ): void

proc `remove`*( self: CharacterData ): void

proc `splitText`*( self: Text, `offset`: uint32 ): Text

proc `setStart`*( self: Range, `node`: Node, `offset`: uint32 ): void

proc `setEnd`*( self: Range, `node`: Node, `offset`: uint32 ): void

proc `setStartBefore`*( self: Range, `node`: Node ): void

proc `setStartAfter`*( self: Range, `node`: Node ): void

proc `setEndBefore`*( self: Range, `node`: Node ): void

proc `setEndAfter`*( self: Range, `node`: Node ): void

proc `collapse`*( self: Range ): void
proc `collapse`*( self: Range, `toStart`: bool ): void

proc `selectNode`*( self: Range, `node`: Node ): void

proc `selectNodeContents`*( self: Range, `node`: Node ): void

proc `compareBoundaryPoints`*( self: Range, `how`: uint16, `sourceRange`: Range ): int16

proc `deleteContents`*( self: Range ): void

proc `extractContents`*( self: Range ): DocumentFragment

proc `cloneContents`*( self: Range ): DocumentFragment

proc `insertNode`*( self: Range, `node`: Node ): void

proc `surroundContents`*( self: Range, `newParent`: Node ): void

proc `cloneRange`*( self: Range ): Range

proc `detach`*( self: Range ): void

proc `isPointInRange`*( self: Range, `node`: Node, `offset`: uint32 ): bool

proc `comparePoint`*( self: Range, `node`: Node, `offset`: uint32 ): int16

proc `intersectsNode`*( self: Range, `node`: Node ): bool

proc `nextNode`*( self: NodeIterator ): Node

proc `previousNode`*( self: NodeIterator ): Node

proc `detach`*( self: NodeIterator ): void

proc `parentNode`*( self: TreeWalker ): Node

proc `firstChild`*( self: TreeWalker ): Node

proc `lastChild`*( self: TreeWalker ): Node

proc `previousSibling`*( self: TreeWalker ): Node

proc `nextSibling`*( self: TreeWalker ): Node

proc `previousNode`*( self: TreeWalker ): Node

proc `nextNode`*( self: TreeWalker ): Node

proc `acceptNode`*( self: NodeFilter, `node`: Node ): uint16

proc `contains`*( self: DOMTokenList, `token`: cstring ): bool

proc `add`*( self: DOMTokenList ): void

proc `remove`*( self: DOMTokenList ): void

proc `toggle`*( self: DOMTokenList, `token`: cstring ): bool
proc `toggle`*( self: DOMTokenList, `token`: cstring, `force`: bool ): bool

proc `replace`*( self: DOMTokenList, `token`: cstring, `newToken`: cstring ): void

proc `supports`*( self: DOMTokenList, `token`: cstring ): bool

proc `click`*( self: HTMLElement ): void

proc `focus`*( self: HTMLElement ): void

proc `blur`*( self: HTMLElement ): void

proc `forceSpellCheck`*( self: HTMLElement ): void

proc `contains`*( self: DOMStringList, `string`: cstring ): bool

proc `assign`*( self: Location, `url`: cstring ): void

proc `replace`*( self: Location, `url`: cstring ): void

proc `reload`*( self: Location ): void

proc `go`*( self: History ): void
proc `go`*( self: History, `delta`: int32 ): void

proc `back`*( self: History ): void

proc `forward`*( self: History ): void

proc `close`*( self: Window ): void

proc `stop`*( self: Window ): void

proc `focus`*( self: Window ): void

proc `blur`*( self: Window ): void

proc `open`*( self: Window ): Window
proc `open`*( self: Window, `url`: cstring ): Window
proc `open`*( self: Window, `url`: cstring, `target`: cstring ): Window
proc `open`*( self: Window, `url`: cstring, `target`: cstring, `features`: cstring ): Window

proc `alert`*( self: Window ): void

proc `alert`*( self: Window, `message`: cstring ): void

proc `confirm`*( self: Window ): bool
proc `confirm`*( self: Window, `message`: cstring ): bool

proc `prompt`*( self: Window ): cstring
proc `prompt`*( self: Window, `message`: cstring ): cstring
proc `prompt`*( self: Window, `message`: cstring, `default`: cstring ): cstring

proc `print`*( self: Window ): void

proc `cancelAnimationFrame`*( self: Window, `handle`: uint32 ): void

proc `btoa`*( self: Window, `data`: cstring ): cstring

proc `atob`*( self: Window, `data`: cstring ): cstring

proc `setTimeout`*( self: Window, `handler`: proc () ): int32
proc `setTimeout`*( self: Window, `handler`: proc (), `timeout`: int32 ): int32

proc `clearTimeout`*( self: Window ): void
proc `clearTimeout`*( self: Window, `handle`: int32 ): void

proc `setInterval`*( self: Window, `handler`: proc () ): int32
proc `setInterval`*( self: Window, `handler`: proc (), `timeout`: int32 ): int32

proc `clearInterval`*( self: Window ): void
proc `clearInterval`*( self: Window, `handle`: int32 ): void

proc `btoa`*( self: WindowOrWorkerGlobalScope, `data`: cstring ): cstring

proc `atob`*( self: WindowOrWorkerGlobalScope, `data`: cstring ): cstring

proc `setTimeout`*( self: WindowOrWorkerGlobalScope, `handler`: proc () ): int32
proc `setTimeout`*( self: WindowOrWorkerGlobalScope, `handler`: proc (), `timeout`: int32 ): int32

proc `clearTimeout`*( self: WindowOrWorkerGlobalScope ): void
proc `clearTimeout`*( self: WindowOrWorkerGlobalScope, `handle`: int32 ): void

proc `setInterval`*( self: WindowOrWorkerGlobalScope, `handler`: proc () ): int32
proc `setInterval`*( self: WindowOrWorkerGlobalScope, `handler`: proc (), `timeout`: int32 ): int32

proc `clearInterval`*( self: WindowOrWorkerGlobalScope ): void
proc `clearInterval`*( self: WindowOrWorkerGlobalScope, `handle`: int32 ): void

{. pop .}

var
    `window`* {. importc .}: Window
    `self`* {. importc .}: Window
    `document`* {. importc .}: Document
    `name`* {. importc .}: cstring
    `location`* {. importc .}: Location
    `history`* {. importc .}: History
    `status`* {. importc .}: cstring
    `closed`* {. importc .}: bool
    `frames`* {. importc .}: Window
    `length`* {. importc .}: uint32
    `top`* {. importc .}: Window
    `parent`* {. importc .}: Window
    `frameElement`* {. importc .}: Element
    `origin`* {. importc .}: cstring
