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
pub struct SwitchManualIntSize {
    pub _root: SharedType<SwitchManualIntSize>,
    pub _parent: SharedType<SwitchManualIntSize>,
    pub _self: SharedType<Self>,
    chunks: RefCell<Vec<OptRc<SwitchManualIntSize_Chunk>>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for SwitchManualIntSize {
    type Root = SwitchManualIntSize;
    type Parent = SwitchManualIntSize;

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
                let t = Self::read_into::<_, SwitchManualIntSize_Chunk>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                self_rc.chunks.borrow_mut().push(t);
                _i += 1;
            }
        }
        Ok(())
    }
}
impl SwitchManualIntSize {
}
impl SwitchManualIntSize {
    pub fn chunks(&self) -> Ref<Vec<OptRc<SwitchManualIntSize_Chunk>>> {
        self.chunks.borrow()
    }
}
impl SwitchManualIntSize {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct SwitchManualIntSize_Chunk {
    pub _root: SharedType<SwitchManualIntSize>,
    pub _parent: SharedType<SwitchManualIntSize>,
    pub _self: SharedType<Self>,
    code: RefCell<u8>,
    size: RefCell<u32>,
    body: RefCell<Option<SwitchManualIntSize_Chunk_Body>>,
    _io: RefCell<BytesReader>,
    body_raw: RefCell<Vec<u8>>,
}
#[derive(Debug, Clone)]
pub enum SwitchManualIntSize_Chunk_Body {
    SwitchManualIntSize_Chunk_ChunkMeta(OptRc<SwitchManualIntSize_Chunk_ChunkMeta>),
    SwitchManualIntSize_Chunk_ChunkDir(OptRc<SwitchManualIntSize_Chunk_ChunkDir>),
    Bytes(Vec<u8>),
}
impl From<&SwitchManualIntSize_Chunk_Body> for OptRc<SwitchManualIntSize_Chunk_ChunkMeta> {
    fn from(v: &SwitchManualIntSize_Chunk_Body) -> Self {
        if let SwitchManualIntSize_Chunk_Body::SwitchManualIntSize_Chunk_ChunkMeta(x) = v {
            return x.clone();
        }
        panic!("expected SwitchManualIntSize_Chunk_Body::SwitchManualIntSize_Chunk_ChunkMeta, got {:?}", v)
    }
}
impl From<OptRc<SwitchManualIntSize_Chunk_ChunkMeta>> for SwitchManualIntSize_Chunk_Body {
    fn from(v: OptRc<SwitchManualIntSize_Chunk_ChunkMeta>) -> Self {
        Self::SwitchManualIntSize_Chunk_ChunkMeta(v)
    }
}
impl From<&SwitchManualIntSize_Chunk_Body> for OptRc<SwitchManualIntSize_Chunk_ChunkDir> {
    fn from(v: &SwitchManualIntSize_Chunk_Body) -> Self {
        if let SwitchManualIntSize_Chunk_Body::SwitchManualIntSize_Chunk_ChunkDir(x) = v {
            return x.clone();
        }
        panic!("expected SwitchManualIntSize_Chunk_Body::SwitchManualIntSize_Chunk_ChunkDir, got {:?}", v)
    }
}
impl From<OptRc<SwitchManualIntSize_Chunk_ChunkDir>> for SwitchManualIntSize_Chunk_Body {
    fn from(v: OptRc<SwitchManualIntSize_Chunk_ChunkDir>) -> Self {
        Self::SwitchManualIntSize_Chunk_ChunkDir(v)
    }
}
impl From<&SwitchManualIntSize_Chunk_Body> for Vec<u8> {
    fn from(v: &SwitchManualIntSize_Chunk_Body) -> Self {
        if let SwitchManualIntSize_Chunk_Body::Bytes(x) = v {
            return x.clone();
        }
        panic!("expected SwitchManualIntSize_Chunk_Body::Bytes, got {:?}", v)
    }
}
impl From<Vec<u8>> for SwitchManualIntSize_Chunk_Body {
    fn from(v: Vec<u8>) -> Self {
        Self::Bytes(v)
    }
}
impl KStruct for SwitchManualIntSize_Chunk {
    type Root = SwitchManualIntSize;
    type Parent = SwitchManualIntSize;

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
                let t = Self::read_into::<BytesReader, SwitchManualIntSize_Chunk_ChunkMeta>(&_t_body_raw_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                *self_rc.body.borrow_mut() = Some(t);
            }
            34 => {
                *self_rc.body_raw.borrow_mut() = _io.read_bytes(*self_rc.size() as usize)?.into();
                let body_raw = self_rc.body_raw.borrow();
                let _t_body_raw_io = BytesReader::from(body_raw.clone());
                let t = Self::read_into::<BytesReader, SwitchManualIntSize_Chunk_ChunkDir>(&_t_body_raw_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                *self_rc.body.borrow_mut() = Some(t);
            }
            _ => {
                *self_rc.body.borrow_mut() = Some(_io.read_bytes(*self_rc.size() as usize)?.into());
            }
        }
        Ok(())
    }
}
impl SwitchManualIntSize_Chunk {
}
impl SwitchManualIntSize_Chunk {
    pub fn code(&self) -> Ref<u8> {
        self.code.borrow()
    }
}
impl SwitchManualIntSize_Chunk {
    pub fn size(&self) -> Ref<u32> {
        self.size.borrow()
    }
}
impl SwitchManualIntSize_Chunk {
    pub fn body(&self) -> Ref<Option<SwitchManualIntSize_Chunk_Body>> {
        self.body.borrow()
    }
}
impl SwitchManualIntSize_Chunk {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
impl SwitchManualIntSize_Chunk {
    pub fn body_raw(&self) -> Ref<Vec<u8>> {
        self.body_raw.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct SwitchManualIntSize_Chunk_ChunkDir {
    pub _root: SharedType<SwitchManualIntSize>,
    pub _parent: SharedType<SwitchManualIntSize_Chunk>,
    pub _self: SharedType<Self>,
    entries: RefCell<Vec<String>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for SwitchManualIntSize_Chunk_ChunkDir {
    type Root = SwitchManualIntSize;
    type Parent = SwitchManualIntSize_Chunk;

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
impl SwitchManualIntSize_Chunk_ChunkDir {
}
impl SwitchManualIntSize_Chunk_ChunkDir {
    pub fn entries(&self) -> Ref<Vec<String>> {
        self.entries.borrow()
    }
}
impl SwitchManualIntSize_Chunk_ChunkDir {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct SwitchManualIntSize_Chunk_ChunkMeta {
    pub _root: SharedType<SwitchManualIntSize>,
    pub _parent: SharedType<SwitchManualIntSize_Chunk>,
    pub _self: SharedType<Self>,
    title: RefCell<String>,
    author: RefCell<String>,
    _io: RefCell<BytesReader>,
}
impl KStruct for SwitchManualIntSize_Chunk_ChunkMeta {
    type Root = SwitchManualIntSize;
    type Parent = SwitchManualIntSize_Chunk;

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
impl SwitchManualIntSize_Chunk_ChunkMeta {
}
impl SwitchManualIntSize_Chunk_ChunkMeta {
    pub fn title(&self) -> Ref<String> {
        self.title.borrow()
    }
}
impl SwitchManualIntSize_Chunk_ChunkMeta {
    pub fn author(&self) -> Ref<String> {
        self.author.borrow()
    }
}
impl SwitchManualIntSize_Chunk_ChunkMeta {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
