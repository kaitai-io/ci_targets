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
pub struct SwitchManualIntSizeElse {
    pub _root: SharedType<SwitchManualIntSizeElse>,
    pub _parent: SharedType<SwitchManualIntSizeElse>,
    pub _self: SharedType<Self>,
    chunks: RefCell<Vec<OptRc<SwitchManualIntSizeElse_Chunk>>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for SwitchManualIntSizeElse {
    type Root = SwitchManualIntSizeElse;
    type Parent = SwitchManualIntSizeElse;

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
                let t = Self::read_into::<_, SwitchManualIntSizeElse_Chunk>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                self_rc.chunks.borrow_mut().push(t);
                _i += 1;
            }
        }
        Ok(())
    }
}
impl SwitchManualIntSizeElse {
}
impl SwitchManualIntSizeElse {
    pub fn chunks(&self) -> Ref<'_, Vec<OptRc<SwitchManualIntSizeElse_Chunk>>> {
        self.chunks.borrow()
    }
}
impl SwitchManualIntSizeElse {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct SwitchManualIntSizeElse_Chunk {
    pub _root: SharedType<SwitchManualIntSizeElse>,
    pub _parent: SharedType<SwitchManualIntSizeElse>,
    pub _self: SharedType<Self>,
    code: RefCell<u8>,
    size: RefCell<u32>,
    body: RefCell<Option<SwitchManualIntSizeElse_Chunk_Body>>,
    _io: RefCell<BytesReader>,
    body_raw: RefCell<Vec<u8>>,
}
#[derive(Debug, Clone)]
pub enum SwitchManualIntSizeElse_Chunk_Body {
    SwitchManualIntSizeElse_Chunk_ChunkMeta(OptRc<SwitchManualIntSizeElse_Chunk_ChunkMeta>),
    SwitchManualIntSizeElse_Chunk_ChunkDir(OptRc<SwitchManualIntSizeElse_Chunk_ChunkDir>),
    SwitchManualIntSizeElse_Chunk_Dummy(OptRc<SwitchManualIntSizeElse_Chunk_Dummy>),
}
impl From<&SwitchManualIntSizeElse_Chunk_Body> for OptRc<SwitchManualIntSizeElse_Chunk_ChunkMeta> {
    fn from(v: &SwitchManualIntSizeElse_Chunk_Body) -> Self {
        if let SwitchManualIntSizeElse_Chunk_Body::SwitchManualIntSizeElse_Chunk_ChunkMeta(x) = v {
            return x.clone();
        }
        panic!("expected SwitchManualIntSizeElse_Chunk_Body::SwitchManualIntSizeElse_Chunk_ChunkMeta, got {:?}", v)
    }
}
impl From<OptRc<SwitchManualIntSizeElse_Chunk_ChunkMeta>> for SwitchManualIntSizeElse_Chunk_Body {
    fn from(v: OptRc<SwitchManualIntSizeElse_Chunk_ChunkMeta>) -> Self {
        Self::SwitchManualIntSizeElse_Chunk_ChunkMeta(v)
    }
}
impl From<&SwitchManualIntSizeElse_Chunk_Body> for OptRc<SwitchManualIntSizeElse_Chunk_ChunkDir> {
    fn from(v: &SwitchManualIntSizeElse_Chunk_Body) -> Self {
        if let SwitchManualIntSizeElse_Chunk_Body::SwitchManualIntSizeElse_Chunk_ChunkDir(x) = v {
            return x.clone();
        }
        panic!("expected SwitchManualIntSizeElse_Chunk_Body::SwitchManualIntSizeElse_Chunk_ChunkDir, got {:?}", v)
    }
}
impl From<OptRc<SwitchManualIntSizeElse_Chunk_ChunkDir>> for SwitchManualIntSizeElse_Chunk_Body {
    fn from(v: OptRc<SwitchManualIntSizeElse_Chunk_ChunkDir>) -> Self {
        Self::SwitchManualIntSizeElse_Chunk_ChunkDir(v)
    }
}
impl From<&SwitchManualIntSizeElse_Chunk_Body> for OptRc<SwitchManualIntSizeElse_Chunk_Dummy> {
    fn from(v: &SwitchManualIntSizeElse_Chunk_Body) -> Self {
        if let SwitchManualIntSizeElse_Chunk_Body::SwitchManualIntSizeElse_Chunk_Dummy(x) = v {
            return x.clone();
        }
        panic!("expected SwitchManualIntSizeElse_Chunk_Body::SwitchManualIntSizeElse_Chunk_Dummy, got {:?}", v)
    }
}
impl From<OptRc<SwitchManualIntSizeElse_Chunk_Dummy>> for SwitchManualIntSizeElse_Chunk_Body {
    fn from(v: OptRc<SwitchManualIntSizeElse_Chunk_Dummy>) -> Self {
        Self::SwitchManualIntSizeElse_Chunk_Dummy(v)
    }
}
impl KStruct for SwitchManualIntSizeElse_Chunk {
    type Root = SwitchManualIntSizeElse;
    type Parent = SwitchManualIntSizeElse;

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
        match *self_rc.code() {
            17 => {
                *self_rc.body_raw.borrow_mut() = _io.read_bytes(*self_rc.size() as usize)?.into();
                let body_raw = self_rc.body_raw.borrow();
                let _t_body_raw_io = BytesReader::from(body_raw.clone());
                let t = Self::read_into::<BytesReader, SwitchManualIntSizeElse_Chunk_ChunkMeta>(&_t_body_raw_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                *self_rc.body.borrow_mut() = Some(t);
            }
            34 => {
                *self_rc.body_raw.borrow_mut() = _io.read_bytes(*self_rc.size() as usize)?.into();
                let body_raw = self_rc.body_raw.borrow();
                let _t_body_raw_io = BytesReader::from(body_raw.clone());
                let t = Self::read_into::<BytesReader, SwitchManualIntSizeElse_Chunk_ChunkDir>(&_t_body_raw_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                *self_rc.body.borrow_mut() = Some(t);
            }
            _ => {
                *self_rc.body_raw.borrow_mut() = _io.read_bytes(*self_rc.size() as usize)?.into();
                let body_raw = self_rc.body_raw.borrow();
                let _t_body_raw_io = BytesReader::from(body_raw.clone());
                let t = Self::read_into::<BytesReader, SwitchManualIntSizeElse_Chunk_Dummy>(&_t_body_raw_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                *self_rc.body.borrow_mut() = Some(t);
            }
        }
        Ok(())
    }
}
impl SwitchManualIntSizeElse_Chunk {
}
impl SwitchManualIntSizeElse_Chunk {
    pub fn code(&self) -> Ref<'_, u8> {
        self.code.borrow()
    }
}
impl SwitchManualIntSizeElse_Chunk {
    pub fn size(&self) -> Ref<'_, u32> {
        self.size.borrow()
    }
}
impl SwitchManualIntSizeElse_Chunk {
    pub fn body(&self) -> Ref<'_, Option<SwitchManualIntSizeElse_Chunk_Body>> {
        self.body.borrow()
    }
}
impl SwitchManualIntSizeElse_Chunk {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
impl SwitchManualIntSizeElse_Chunk {
    pub fn body_raw(&self) -> Ref<'_, Vec<u8>> {
        self.body_raw.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct SwitchManualIntSizeElse_Chunk_ChunkDir {
    pub _root: SharedType<SwitchManualIntSizeElse>,
    pub _parent: SharedType<SwitchManualIntSizeElse_Chunk>,
    pub _self: SharedType<Self>,
    entries: RefCell<Vec<String>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for SwitchManualIntSizeElse_Chunk_ChunkDir {
    type Root = SwitchManualIntSizeElse;
    type Parent = SwitchManualIntSizeElse_Chunk;

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
impl SwitchManualIntSizeElse_Chunk_ChunkDir {
}
impl SwitchManualIntSizeElse_Chunk_ChunkDir {
    pub fn entries(&self) -> Ref<'_, Vec<String>> {
        self.entries.borrow()
    }
}
impl SwitchManualIntSizeElse_Chunk_ChunkDir {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct SwitchManualIntSizeElse_Chunk_ChunkMeta {
    pub _root: SharedType<SwitchManualIntSizeElse>,
    pub _parent: SharedType<SwitchManualIntSizeElse_Chunk>,
    pub _self: SharedType<Self>,
    title: RefCell<String>,
    author: RefCell<String>,
    _io: RefCell<BytesReader>,
}
impl KStruct for SwitchManualIntSizeElse_Chunk_ChunkMeta {
    type Root = SwitchManualIntSizeElse;
    type Parent = SwitchManualIntSizeElse_Chunk;

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
impl SwitchManualIntSizeElse_Chunk_ChunkMeta {
}
impl SwitchManualIntSizeElse_Chunk_ChunkMeta {
    pub fn title(&self) -> Ref<'_, String> {
        self.title.borrow()
    }
}
impl SwitchManualIntSizeElse_Chunk_ChunkMeta {
    pub fn author(&self) -> Ref<'_, String> {
        self.author.borrow()
    }
}
impl SwitchManualIntSizeElse_Chunk_ChunkMeta {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct SwitchManualIntSizeElse_Chunk_Dummy {
    pub _root: SharedType<SwitchManualIntSizeElse>,
    pub _parent: SharedType<SwitchManualIntSizeElse_Chunk>,
    pub _self: SharedType<Self>,
    rest: RefCell<Vec<u8>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for SwitchManualIntSizeElse_Chunk_Dummy {
    type Root = SwitchManualIntSizeElse;
    type Parent = SwitchManualIntSizeElse_Chunk;

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
        *self_rc.rest.borrow_mut() = _io.read_bytes_full()?.into();
        Ok(())
    }
}
impl SwitchManualIntSizeElse_Chunk_Dummy {
}
impl SwitchManualIntSizeElse_Chunk_Dummy {
    pub fn rest(&self) -> Ref<'_, Vec<u8>> {
        self.rest.borrow()
    }
}
impl SwitchManualIntSizeElse_Chunk_Dummy {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
