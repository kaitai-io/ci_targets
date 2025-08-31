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
pub struct StructPadTerm {
    pub _root: SharedType<StructPadTerm>,
    pub _parent: SharedType<StructPadTerm>,
    pub _self: SharedType<Self>,
    str_pad: RefCell<OptRc<StructPadTerm_BytesWrapper>>,
    str_term: RefCell<OptRc<StructPadTerm_BytesWrapper>>,
    str_term_and_pad: RefCell<OptRc<StructPadTerm_BytesWrapper>>,
    str_term_include: RefCell<OptRc<StructPadTerm_BytesWrapper>>,
    _io: RefCell<BytesReader>,
    str_pad_raw: RefCell<Vec<u8>>,
    str_term_raw: RefCell<Vec<u8>>,
    str_term_and_pad_raw: RefCell<Vec<u8>>,
    str_term_include_raw: RefCell<Vec<u8>>,
}
impl KStruct for StructPadTerm {
    type Root = StructPadTerm;
    type Parent = StructPadTerm;

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
        *self_rc.str_pad_raw.borrow_mut() = bytes_strip_right(&_io.read_bytes(20 as usize)?.into(), 64).into();
        let str_pad_raw = self_rc.str_pad_raw.borrow();
        let _t_str_pad_raw_io = BytesReader::from(str_pad_raw.clone());
        let t = Self::read_into::<BytesReader, StructPadTerm_BytesWrapper>(&_t_str_pad_raw_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.str_pad.borrow_mut() = t;
        *self_rc.str_term_raw.borrow_mut() = bytes_terminate(&_io.read_bytes(20 as usize)?.into(), 64, false).into();
        let str_term_raw = self_rc.str_term_raw.borrow();
        let _t_str_term_raw_io = BytesReader::from(str_term_raw.clone());
        let t = Self::read_into::<BytesReader, StructPadTerm_BytesWrapper>(&_t_str_term_raw_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.str_term.borrow_mut() = t;
        *self_rc.str_term_and_pad_raw.borrow_mut() = bytes_terminate(&bytes_strip_right(&_io.read_bytes(20 as usize)?.into(), 43).into(), 64, false).into();
        let str_term_and_pad_raw = self_rc.str_term_and_pad_raw.borrow();
        let _t_str_term_and_pad_raw_io = BytesReader::from(str_term_and_pad_raw.clone());
        let t = Self::read_into::<BytesReader, StructPadTerm_BytesWrapper>(&_t_str_term_and_pad_raw_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.str_term_and_pad.borrow_mut() = t;
        *self_rc.str_term_include_raw.borrow_mut() = bytes_terminate(&_io.read_bytes(20 as usize)?.into(), 64, true).into();
        let str_term_include_raw = self_rc.str_term_include_raw.borrow();
        let _t_str_term_include_raw_io = BytesReader::from(str_term_include_raw.clone());
        let t = Self::read_into::<BytesReader, StructPadTerm_BytesWrapper>(&_t_str_term_include_raw_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.str_term_include.borrow_mut() = t;
        Ok(())
    }
}
impl StructPadTerm {
}
impl StructPadTerm {
    pub fn str_pad(&self) -> Ref<'_, OptRc<StructPadTerm_BytesWrapper>> {
        self.str_pad.borrow()
    }
}
impl StructPadTerm {
    pub fn str_term(&self) -> Ref<'_, OptRc<StructPadTerm_BytesWrapper>> {
        self.str_term.borrow()
    }
}
impl StructPadTerm {
    pub fn str_term_and_pad(&self) -> Ref<'_, OptRc<StructPadTerm_BytesWrapper>> {
        self.str_term_and_pad.borrow()
    }
}
impl StructPadTerm {
    pub fn str_term_include(&self) -> Ref<'_, OptRc<StructPadTerm_BytesWrapper>> {
        self.str_term_include.borrow()
    }
}
impl StructPadTerm {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
impl StructPadTerm {
    pub fn str_pad_raw(&self) -> Ref<'_, Vec<u8>> {
        self.str_pad_raw.borrow()
    }
}
impl StructPadTerm {
    pub fn str_term_raw(&self) -> Ref<'_, Vec<u8>> {
        self.str_term_raw.borrow()
    }
}
impl StructPadTerm {
    pub fn str_term_and_pad_raw(&self) -> Ref<'_, Vec<u8>> {
        self.str_term_and_pad_raw.borrow()
    }
}
impl StructPadTerm {
    pub fn str_term_include_raw(&self) -> Ref<'_, Vec<u8>> {
        self.str_term_include_raw.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct StructPadTerm_BytesWrapper {
    pub _root: SharedType<StructPadTerm>,
    pub _parent: SharedType<StructPadTerm>,
    pub _self: SharedType<Self>,
    value: RefCell<Vec<u8>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for StructPadTerm_BytesWrapper {
    type Root = StructPadTerm;
    type Parent = StructPadTerm;

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
        *self_rc.value.borrow_mut() = _io.read_bytes_full()?.into();
        Ok(())
    }
}
impl StructPadTerm_BytesWrapper {
}
impl StructPadTerm_BytesWrapper {
    pub fn value(&self) -> Ref<'_, Vec<u8>> {
        self.value.borrow()
    }
}
impl StructPadTerm_BytesWrapper {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
