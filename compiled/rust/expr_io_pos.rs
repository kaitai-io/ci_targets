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
pub struct ExprIoPos {
    pub _root: SharedType<ExprIoPos>,
    pub _parent: SharedType<ExprIoPos>,
    pub _self: SharedType<Self>,
    substream1: RefCell<OptRc<ExprIoPos_AllPlusNumber>>,
    substream2: RefCell<OptRc<ExprIoPos_AllPlusNumber>>,
    _io: RefCell<BytesReader>,
    substream1_raw: RefCell<Vec<u8>>,
    substream2_raw: RefCell<Vec<u8>>,
}
impl KStruct for ExprIoPos {
    type Root = ExprIoPos;
    type Parent = ExprIoPos;

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
        *self_rc.substream1_raw.borrow_mut() = _io.read_bytes(16 as usize)?.into();
        let substream1_raw = self_rc.substream1_raw.borrow();
        let _t_substream1_raw_io = BytesReader::from(substream1_raw.clone());
        let t = Self::read_into::<BytesReader, ExprIoPos_AllPlusNumber>(&_t_substream1_raw_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.substream1.borrow_mut() = t;
        *self_rc.substream2_raw.borrow_mut() = _io.read_bytes(14 as usize)?.into();
        let substream2_raw = self_rc.substream2_raw.borrow();
        let _t_substream2_raw_io = BytesReader::from(substream2_raw.clone());
        let t = Self::read_into::<BytesReader, ExprIoPos_AllPlusNumber>(&_t_substream2_raw_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.substream2.borrow_mut() = t;
        Ok(())
    }
}
impl ExprIoPos {
}
impl ExprIoPos {
    pub fn substream1(&self) -> Ref<OptRc<ExprIoPos_AllPlusNumber>> {
        self.substream1.borrow()
    }
}
impl ExprIoPos {
    pub fn substream2(&self) -> Ref<OptRc<ExprIoPos_AllPlusNumber>> {
        self.substream2.borrow()
    }
}
impl ExprIoPos {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
impl ExprIoPos {
    pub fn substream1_raw(&self) -> Ref<Vec<u8>> {
        self.substream1_raw.borrow()
    }
}
impl ExprIoPos {
    pub fn substream2_raw(&self) -> Ref<Vec<u8>> {
        self.substream2_raw.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct ExprIoPos_AllPlusNumber {
    pub _root: SharedType<ExprIoPos>,
    pub _parent: SharedType<ExprIoPos>,
    pub _self: SharedType<Self>,
    my_str: RefCell<String>,
    body: RefCell<Vec<u8>>,
    number: RefCell<u16>,
    _io: RefCell<BytesReader>,
}
impl KStruct for ExprIoPos_AllPlusNumber {
    type Root = ExprIoPos;
    type Parent = ExprIoPos;

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
        *self_rc.my_str.borrow_mut() = bytes_to_str(&_io.read_bytes_term(0, false, true, true)?.into(), "UTF-8")?;
        *self_rc.body.borrow_mut() = _io.read_bytes(((((_io.size() as i32) - (_io.pos() as i32)) as i32) - (2 as i32)) as usize)?.into();
        *self_rc.number.borrow_mut() = _io.read_u2le()?.into();
        Ok(())
    }
}
impl ExprIoPos_AllPlusNumber {
}
impl ExprIoPos_AllPlusNumber {
    pub fn my_str(&self) -> Ref<String> {
        self.my_str.borrow()
    }
}
impl ExprIoPos_AllPlusNumber {
    pub fn body(&self) -> Ref<Vec<u8>> {
        self.body.borrow()
    }
}
impl ExprIoPos_AllPlusNumber {
    pub fn number(&self) -> Ref<u16> {
        self.number.borrow()
    }
}
impl ExprIoPos_AllPlusNumber {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
