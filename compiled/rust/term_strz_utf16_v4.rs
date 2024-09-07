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
pub struct TermStrzUtf16V4 {
    pub _root: SharedType<TermStrzUtf16V4>,
    pub _parent: SharedType<TermStrzUtf16V4>,
    pub _self: SharedType<Self>,
    s1: RefCell<OptRc<TermStrzUtf16V4_S1Type>>,
    skip_term1: RefCell<Vec<u8>>,
    s2: RefCell<OptRc<TermStrzUtf16V4_S2Type>>,
    skip_term2: RefCell<Vec<u8>>,
    s3: RefCell<OptRc<TermStrzUtf16V4_S3Type>>,
    _io: RefCell<BytesReader>,
    s1_raw: RefCell<Vec<u8>>,
    s2_raw: RefCell<Vec<u8>>,
    s3_raw: RefCell<Vec<u8>>,
}
impl KStruct for TermStrzUtf16V4 {
    type Root = TermStrzUtf16V4;
    type Parent = TermStrzUtf16V4;

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
        *self_rc.s1_raw.borrow_mut() = _io.read_bytes(6 as usize)?.into();
        let s1_raw = self_rc.s1_raw.borrow();
        let _t_s1_raw_io = BytesReader::from(s1_raw.clone());
        let t = Self::read_into::<BytesReader, TermStrzUtf16V4_S1Type>(&_t_s1_raw_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.s1.borrow_mut() = t;
        *self_rc.skip_term1.borrow_mut() = _io.read_bytes(2 as usize)?.into();
        *self_rc.s2_raw.borrow_mut() = _io.read_bytes(6 as usize)?.into();
        let s2_raw = self_rc.s2_raw.borrow();
        let _t_s2_raw_io = BytesReader::from(s2_raw.clone());
        let t = Self::read_into::<BytesReader, TermStrzUtf16V4_S2Type>(&_t_s2_raw_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.s2.borrow_mut() = t;
        *self_rc.skip_term2.borrow_mut() = _io.read_bytes(2 as usize)?.into();
        *self_rc.s3_raw.borrow_mut() = _io.read_bytes(6 as usize)?.into();
        let s3_raw = self_rc.s3_raw.borrow();
        let _t_s3_raw_io = BytesReader::from(s3_raw.clone());
        let t = Self::read_into::<BytesReader, TermStrzUtf16V4_S3Type>(&_t_s3_raw_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.s3.borrow_mut() = t;
        Ok(())
    }
}
impl TermStrzUtf16V4 {
}
impl TermStrzUtf16V4 {
    pub fn s1(&self) -> Ref<OptRc<TermStrzUtf16V4_S1Type>> {
        self.s1.borrow()
    }
}
impl TermStrzUtf16V4 {
    pub fn skip_term1(&self) -> Ref<Vec<u8>> {
        self.skip_term1.borrow()
    }
}
impl TermStrzUtf16V4 {
    pub fn s2(&self) -> Ref<OptRc<TermStrzUtf16V4_S2Type>> {
        self.s2.borrow()
    }
}
impl TermStrzUtf16V4 {
    pub fn skip_term2(&self) -> Ref<Vec<u8>> {
        self.skip_term2.borrow()
    }
}
impl TermStrzUtf16V4 {
    pub fn s3(&self) -> Ref<OptRc<TermStrzUtf16V4_S3Type>> {
        self.s3.borrow()
    }
}
impl TermStrzUtf16V4 {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
impl TermStrzUtf16V4 {
    pub fn s1_raw(&self) -> Ref<Vec<u8>> {
        self.s1_raw.borrow()
    }
}
impl TermStrzUtf16V4 {
    pub fn s2_raw(&self) -> Ref<Vec<u8>> {
        self.s2_raw.borrow()
    }
}
impl TermStrzUtf16V4 {
    pub fn s3_raw(&self) -> Ref<Vec<u8>> {
        self.s3_raw.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct TermStrzUtf16V4_S1Type {
    pub _root: SharedType<TermStrzUtf16V4>,
    pub _parent: SharedType<TermStrzUtf16V4>,
    pub _self: SharedType<Self>,
    value: RefCell<String>,
    _io: RefCell<BytesReader>,
}
impl KStruct for TermStrzUtf16V4_S1Type {
    type Root = TermStrzUtf16V4;
    type Parent = TermStrzUtf16V4;

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
        *self_rc.value.borrow_mut() = bytes_to_str(&_io.read_bytes_term(0, false, true, false)?.into(), "UTF-16LE")?;
        Ok(())
    }
}
impl TermStrzUtf16V4_S1Type {
}
impl TermStrzUtf16V4_S1Type {
    pub fn value(&self) -> Ref<String> {
        self.value.borrow()
    }
}
impl TermStrzUtf16V4_S1Type {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct TermStrzUtf16V4_S2Type {
    pub _root: SharedType<TermStrzUtf16V4>,
    pub _parent: SharedType<TermStrzUtf16V4>,
    pub _self: SharedType<Self>,
    value: RefCell<String>,
    _io: RefCell<BytesReader>,
}
impl KStruct for TermStrzUtf16V4_S2Type {
    type Root = TermStrzUtf16V4;
    type Parent = TermStrzUtf16V4;

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
        *self_rc.value.borrow_mut() = bytes_to_str(&_io.read_bytes_term(0, false, false, false)?.into(), "UTF-16LE")?;
        Ok(())
    }
}
impl TermStrzUtf16V4_S2Type {
}
impl TermStrzUtf16V4_S2Type {
    pub fn value(&self) -> Ref<String> {
        self.value.borrow()
    }
}
impl TermStrzUtf16V4_S2Type {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct TermStrzUtf16V4_S3Type {
    pub _root: SharedType<TermStrzUtf16V4>,
    pub _parent: SharedType<TermStrzUtf16V4>,
    pub _self: SharedType<Self>,
    value: RefCell<String>,
    _io: RefCell<BytesReader>,
}
impl KStruct for TermStrzUtf16V4_S3Type {
    type Root = TermStrzUtf16V4;
    type Parent = TermStrzUtf16V4;

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
        *self_rc.value.borrow_mut() = bytes_to_str(&_io.read_bytes_term(0, true, true, false)?.into(), "UTF-16LE")?;
        Ok(())
    }
}
impl TermStrzUtf16V4_S3Type {
}
impl TermStrzUtf16V4_S3Type {
    pub fn value(&self) -> Ref<String> {
        self.value.borrow()
    }
}
impl TermStrzUtf16V4_S3Type {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
