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
pub struct ExprIoEof {
    pub _root: SharedType<ExprIoEof>,
    pub _parent: SharedType<ExprIoEof>,
    pub _self: SharedType<Self>,
    substream1: RefCell<OptRc<ExprIoEof_OneOrTwo>>,
    substream2: RefCell<OptRc<ExprIoEof_OneOrTwo>>,
    _io: RefCell<BytesReader>,
    substream1_raw: RefCell<Vec<u8>>,
    substream2_raw: RefCell<Vec<u8>>,
}
impl KStruct for ExprIoEof {
    type Root = ExprIoEof;
    type Parent = ExprIoEof;

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
        *self_rc.substream1_raw.borrow_mut() = _io.read_bytes(4 as usize)?.into();
        let substream1_raw = self_rc.substream1_raw.borrow();
        let _t_substream1_raw_io = BytesReader::from(substream1_raw.clone());
        let t = Self::read_into::<BytesReader, ExprIoEof_OneOrTwo>(&_t_substream1_raw_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.substream1.borrow_mut() = t;
        *self_rc.substream2_raw.borrow_mut() = _io.read_bytes(8 as usize)?.into();
        let substream2_raw = self_rc.substream2_raw.borrow();
        let _t_substream2_raw_io = BytesReader::from(substream2_raw.clone());
        let t = Self::read_into::<BytesReader, ExprIoEof_OneOrTwo>(&_t_substream2_raw_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.substream2.borrow_mut() = t;
        Ok(())
    }
}
impl ExprIoEof {
}
impl ExprIoEof {
    pub fn substream1(&self) -> Ref<'_, OptRc<ExprIoEof_OneOrTwo>> {
        self.substream1.borrow()
    }
}
impl ExprIoEof {
    pub fn substream2(&self) -> Ref<'_, OptRc<ExprIoEof_OneOrTwo>> {
        self.substream2.borrow()
    }
}
impl ExprIoEof {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
impl ExprIoEof {
    pub fn substream1_raw(&self) -> Ref<'_, Vec<u8>> {
        self.substream1_raw.borrow()
    }
}
impl ExprIoEof {
    pub fn substream2_raw(&self) -> Ref<'_, Vec<u8>> {
        self.substream2_raw.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct ExprIoEof_OneOrTwo {
    pub _root: SharedType<ExprIoEof>,
    pub _parent: SharedType<ExprIoEof>,
    pub _self: SharedType<Self>,
    one: RefCell<u32>,
    two: RefCell<u32>,
    _io: RefCell<BytesReader>,
    f_reflect_eof: Cell<bool>,
    reflect_eof: RefCell<bool>,
}
impl KStruct for ExprIoEof_OneOrTwo {
    type Root = ExprIoEof;
    type Parent = ExprIoEof;

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
        *self_rc.one.borrow_mut() = _io.read_u4le()?.into();
        if !(_io.is_eof()) {
            *self_rc.two.borrow_mut() = _io.read_u4le()?.into();
        }
        Ok(())
    }
}
impl ExprIoEof_OneOrTwo {
    pub fn reflect_eof(
        &self
    ) -> KResult<Ref<'_, bool>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_reflect_eof.get() {
            return Ok(self.reflect_eof.borrow());
        }
        self.f_reflect_eof.set(true);
        *self.reflect_eof.borrow_mut() = (_io.is_eof()) as bool;
        Ok(self.reflect_eof.borrow())
    }
}
impl ExprIoEof_OneOrTwo {
    pub fn one(&self) -> Ref<'_, u32> {
        self.one.borrow()
    }
}
impl ExprIoEof_OneOrTwo {
    pub fn two(&self) -> Ref<'_, u32> {
        self.two.borrow()
    }
}
impl ExprIoEof_OneOrTwo {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
