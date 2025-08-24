// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#![allow(unused_imports)]
#![allow(non_snake_case)]
#![allow(non_camel_case_types)]
#![allow(irrefutable_let_patterns)]
#![allow(unused_comparisons)]

extern crate kaitai;
use kaitai::*;
use std::convert::{TryFrom, TryInto};
use std::cell::{Ref, Cell, RefCell};
use std::rc::{Rc, Weak};

#[derive(Default, Debug, Clone)]
pub struct SwitchManualIntSizeEos {
    pub _root: SharedType<SwitchManualIntSizeEos>,
    pub _parent: SharedType<SwitchManualIntSizeEos>,
    pub _self: SharedType<Self>,
    chunks: RefCell<Vec<OptRc<SwitchManualIntSizeEos_Chunk>>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for SwitchManualIntSizeEos {
    type Root = SwitchManualIntSizeEos;
    type Parent = SwitchManualIntSizeEos;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.chunks.borrow_mut() = Vec::new();
        {
            let mut _i = 0;
            while !_io.is_eof() {
                let t = Self::read_into::<_, SwitchManualIntSizeEos_Chunk>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                self_rc.chunks.borrow_mut().push(t);
                _i += 1;
            }
        }
        Ok(())
    }
}
impl SwitchManualIntSizeEos {
}
impl SwitchManualIntSizeEos {
    pub fn chunks(&self) -> Ref<'_, Vec<OptRc<SwitchManualIntSizeEos_Chunk>>> {
        self.chunks.borrow()
    }
}
impl SwitchManualIntSizeEos {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct SwitchManualIntSizeEos_Chunk {
    pub _root: SharedType<SwitchManualIntSizeEos>,
    pub _parent: SharedType<SwitchManualIntSizeEos>,
    pub _self: SharedType<Self>,
    code: RefCell<u8>,
    size: RefCell<u32>,
    body: RefCell<OptRc<SwitchManualIntSizeEos_ChunkBody>>,
    _io: RefCell<BytesReader>,
    body_raw: RefCell<Vec<u8>>,
}
impl KStruct for SwitchManualIntSizeEos_Chunk {
    type Root = SwitchManualIntSizeEos;
    type Parent = SwitchManualIntSizeEos;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.code.borrow_mut() = _io.read_u1()?.into();
        *self_rc.size.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.body_raw.borrow_mut() = _io.read_bytes(*self_rc.size() as usize)?.into();
        let body_raw = self_rc.body_raw.borrow();
        let _t_body_raw_io = BytesReader::from(body_raw.clone());
        let t = Self::read_into::<BytesReader, SwitchManualIntSizeEos_ChunkBody>(&_t_body_raw_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.body.borrow_mut() = t;
        Ok(())
    }
}
impl SwitchManualIntSizeEos_Chunk {
}
impl SwitchManualIntSizeEos_Chunk {
    pub fn code(&self) -> Ref<'_, u8> {
        self.code.borrow()
    }
}
impl SwitchManualIntSizeEos_Chunk {
    pub fn size(&self) -> Ref<'_, u32> {
        self.size.borrow()
    }
}
impl SwitchManualIntSizeEos_Chunk {
    pub fn body(&self) -> Ref<'_, OptRc<SwitchManualIntSizeEos_ChunkBody>> {
        self.body.borrow()
    }
}
impl SwitchManualIntSizeEos_Chunk {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
impl SwitchManualIntSizeEos_Chunk {
    pub fn body_raw(&self) -> Ref<'_, Vec<u8>> {
        self.body_raw.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct SwitchManualIntSizeEos_ChunkBody {
    pub _root: SharedType<SwitchManualIntSizeEos>,
    pub _parent: SharedType<SwitchManualIntSizeEos_Chunk>,
    pub _self: SharedType<Self>,
    body: RefCell<Option<SwitchManualIntSizeEos_ChunkBody_Body>>,
    _io: RefCell<BytesReader>,
    body_raw: RefCell<Vec<u8>>,
}
#[derive(Debug, Clone)]
pub enum SwitchManualIntSizeEos_ChunkBody_Body {
    SwitchManualIntSizeEos_ChunkBody_ChunkMeta(OptRc<SwitchManualIntSizeEos_ChunkBody_ChunkMeta>),
    SwitchManualIntSizeEos_ChunkBody_ChunkDir(OptRc<SwitchManualIntSizeEos_ChunkBody_ChunkDir>),
    Bytes(Vec<u8>),
}
impl From<&SwitchManualIntSizeEos_ChunkBody_Body> for OptRc<SwitchManualIntSizeEos_ChunkBody_ChunkMeta> {
    fn from(v: &SwitchManualIntSizeEos_ChunkBody_Body) -> Self {
        if let SwitchManualIntSizeEos_ChunkBody_Body::SwitchManualIntSizeEos_ChunkBody_ChunkMeta(x) = v {
            return x.clone();
        }
        panic!("expected SwitchManualIntSizeEos_ChunkBody_Body::SwitchManualIntSizeEos_ChunkBody_ChunkMeta, got {:?}", v)
    }
}
impl From<OptRc<SwitchManualIntSizeEos_ChunkBody_ChunkMeta>> for SwitchManualIntSizeEos_ChunkBody_Body {
    fn from(v: OptRc<SwitchManualIntSizeEos_ChunkBody_ChunkMeta>) -> Self {
        Self::SwitchManualIntSizeEos_ChunkBody_ChunkMeta(v)
    }
}
impl From<&SwitchManualIntSizeEos_ChunkBody_Body> for OptRc<SwitchManualIntSizeEos_ChunkBody_ChunkDir> {
    fn from(v: &SwitchManualIntSizeEos_ChunkBody_Body) -> Self {
        if let SwitchManualIntSizeEos_ChunkBody_Body::SwitchManualIntSizeEos_ChunkBody_ChunkDir(x) = v {
            return x.clone();
        }
        panic!("expected SwitchManualIntSizeEos_ChunkBody_Body::SwitchManualIntSizeEos_ChunkBody_ChunkDir, got {:?}", v)
    }
}
impl From<OptRc<SwitchManualIntSizeEos_ChunkBody_ChunkDir>> for SwitchManualIntSizeEos_ChunkBody_Body {
    fn from(v: OptRc<SwitchManualIntSizeEos_ChunkBody_ChunkDir>) -> Self {
        Self::SwitchManualIntSizeEos_ChunkBody_ChunkDir(v)
    }
}
impl From<&SwitchManualIntSizeEos_ChunkBody_Body> for Vec<u8> {
    fn from(v: &SwitchManualIntSizeEos_ChunkBody_Body) -> Self {
        if let SwitchManualIntSizeEos_ChunkBody_Body::Bytes(x) = v {
            return x.clone();
        }
        panic!("expected SwitchManualIntSizeEos_ChunkBody_Body::Bytes, got {:?}", v)
    }
}
impl From<Vec<u8>> for SwitchManualIntSizeEos_ChunkBody_Body {
    fn from(v: Vec<u8>) -> Self {
        Self::Bytes(v)
    }
}
impl KStruct for SwitchManualIntSizeEos_ChunkBody {
    type Root = SwitchManualIntSizeEos;
    type Parent = SwitchManualIntSizeEos_Chunk;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        match *_prc.as_ref().unwrap().code() {
            17 => {
                *self_rc.body_raw.borrow_mut() = _io.read_bytes_full()?.into();
                let body_raw = self_rc.body_raw.borrow();
                let _t_body_raw_io = BytesReader::from(body_raw.clone());
                let t = Self::read_into::<BytesReader, SwitchManualIntSizeEos_ChunkBody_ChunkMeta>(&_t_body_raw_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                *self_rc.body.borrow_mut() = Some(t);
            }
            34 => {
                *self_rc.body_raw.borrow_mut() = _io.read_bytes_full()?.into();
                let body_raw = self_rc.body_raw.borrow();
                let _t_body_raw_io = BytesReader::from(body_raw.clone());
                let t = Self::read_into::<BytesReader, SwitchManualIntSizeEos_ChunkBody_ChunkDir>(&_t_body_raw_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                *self_rc.body.borrow_mut() = Some(t);
            }
            _ => {
                *self_rc.body.borrow_mut() = Some(_io.read_bytes_full()?.into());
            }
        }
        Ok(())
    }
}
impl SwitchManualIntSizeEos_ChunkBody {
}
impl SwitchManualIntSizeEos_ChunkBody {
    pub fn body(&self) -> Ref<'_, Option<SwitchManualIntSizeEos_ChunkBody_Body>> {
        self.body.borrow()
    }
}
impl SwitchManualIntSizeEos_ChunkBody {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
impl SwitchManualIntSizeEos_ChunkBody {
    pub fn body_raw(&self) -> Ref<'_, Vec<u8>> {
        self.body_raw.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct SwitchManualIntSizeEos_ChunkBody_ChunkDir {
    pub _root: SharedType<SwitchManualIntSizeEos>,
    pub _parent: SharedType<SwitchManualIntSizeEos_ChunkBody>,
    pub _self: SharedType<Self>,
    entries: RefCell<Vec<String>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for SwitchManualIntSizeEos_ChunkBody_ChunkDir {
    type Root = SwitchManualIntSizeEos;
    type Parent = SwitchManualIntSizeEos_ChunkBody;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.entries.borrow_mut() = Vec::new();
        {
            let mut _i = 0;
            while !_io.is_eof() {
                self_rc.entries.borrow_mut().push(bytes_to_str(&_io.read_bytes(4 as usize)?.into(), "UTF-8")?);
                _i += 1;
            }
        }
        Ok(())
    }
}
impl SwitchManualIntSizeEos_ChunkBody_ChunkDir {
}
impl SwitchManualIntSizeEos_ChunkBody_ChunkDir {
    pub fn entries(&self) -> Ref<'_, Vec<String>> {
        self.entries.borrow()
    }
}
impl SwitchManualIntSizeEos_ChunkBody_ChunkDir {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct SwitchManualIntSizeEos_ChunkBody_ChunkMeta {
    pub _root: SharedType<SwitchManualIntSizeEos>,
    pub _parent: SharedType<SwitchManualIntSizeEos_ChunkBody>,
    pub _self: SharedType<Self>,
    title: RefCell<String>,
    author: RefCell<String>,
    _io: RefCell<BytesReader>,
}
impl KStruct for SwitchManualIntSizeEos_ChunkBody_ChunkMeta {
    type Root = SwitchManualIntSizeEos;
    type Parent = SwitchManualIntSizeEos_ChunkBody;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.title.borrow_mut() = bytes_to_str(&_io.read_bytes_term(0, false, true, true)?.into(), "UTF-8")?;
        *self_rc.author.borrow_mut() = bytes_to_str(&_io.read_bytes_term(0, false, true, true)?.into(), "UTF-8")?;
        Ok(())
    }
}
impl SwitchManualIntSizeEos_ChunkBody_ChunkMeta {
}
impl SwitchManualIntSizeEos_ChunkBody_ChunkMeta {
    pub fn title(&self) -> Ref<'_, String> {
        self.title.borrow()
    }
}
impl SwitchManualIntSizeEos_ChunkBody_ChunkMeta {
    pub fn author(&self) -> Ref<'_, String> {
        self.author.borrow()
    }
}
impl SwitchManualIntSizeEos_ChunkBody_ChunkMeta {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
