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
pub struct TermStruct3 {
    pub _root: SharedType<TermStruct3>,
    pub _parent: SharedType<TermStruct3>,
    pub _self: SharedType<Self>,
    s1: RefCell<OptRc<TermStruct3_BytesWrapper>>,
    s2: RefCell<OptRc<TermStruct3_BytesWrapper>>,
    s3: RefCell<OptRc<TermStruct3_BytesWrapper>>,
    _io: RefCell<BytesReader>,
    s1_raw: RefCell<Vec<u8>>,
    s2_raw: RefCell<Vec<u8>>,
    s3_raw: RefCell<Vec<u8>>,
}
impl KStruct for TermStruct3 {
    type Root = TermStruct3;
    type Parent = TermStruct3;

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
        *self_rc.s1_raw.borrow_mut() = _io.read_bytes_term(124, false, false, true)?.into();
        let s1_raw = self_rc.s1_raw.borrow();
        let _t_s1_raw_io = BytesReader::from(s1_raw.clone());
        let t = Self::read_into::<BytesReader, TermStruct3_BytesWrapper>(&_t_s1_raw_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.s1.borrow_mut() = t;
        *self_rc.s2_raw.borrow_mut() = _io.read_bytes_term(64, false, false, true)?.into();
        let s2_raw = self_rc.s2_raw.borrow();
        let _t_s2_raw_io = BytesReader::from(s2_raw.clone());
        let t = Self::read_into::<BytesReader, TermStruct3_BytesWrapper>(&_t_s2_raw_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.s2.borrow_mut() = t;
        *self_rc.s3_raw.borrow_mut() = _io.read_bytes_term(64, false, true, true)?.into();
        let s3_raw = self_rc.s3_raw.borrow();
        let _t_s3_raw_io = BytesReader::from(s3_raw.clone());
        let t = Self::read_into::<BytesReader, TermStruct3_BytesWrapper>(&_t_s3_raw_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.s3.borrow_mut() = t;
        Ok(())
    }
}
impl TermStruct3 {
}
impl TermStruct3 {
    pub fn s1(&self) -> Ref<'_, OptRc<TermStruct3_BytesWrapper>> {
        self.s1.borrow()
    }
}
impl TermStruct3 {
    pub fn s2(&self) -> Ref<'_, OptRc<TermStruct3_BytesWrapper>> {
        self.s2.borrow()
    }
}
impl TermStruct3 {
    pub fn s3(&self) -> Ref<'_, OptRc<TermStruct3_BytesWrapper>> {
        self.s3.borrow()
    }
}
impl TermStruct3 {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
impl TermStruct3 {
    pub fn s1_raw(&self) -> Ref<'_, Vec<u8>> {
        self.s1_raw.borrow()
    }
}
impl TermStruct3 {
    pub fn s2_raw(&self) -> Ref<'_, Vec<u8>> {
        self.s2_raw.borrow()
    }
}
impl TermStruct3 {
    pub fn s3_raw(&self) -> Ref<'_, Vec<u8>> {
        self.s3_raw.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct TermStruct3_BytesWrapper {
    pub _root: SharedType<TermStruct3>,
    pub _parent: SharedType<TermStruct3>,
    pub _self: SharedType<Self>,
    value: RefCell<Vec<u8>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for TermStruct3_BytesWrapper {
    type Root = TermStruct3;
    type Parent = TermStruct3;

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
impl TermStruct3_BytesWrapper {
}
impl TermStruct3_BytesWrapper {
    pub fn value(&self) -> Ref<'_, Vec<u8>> {
        self.value.borrow()
    }
}
impl TermStruct3_BytesWrapper {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
