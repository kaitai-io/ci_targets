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
pub struct EnumIntRangeU {
    pub _root: SharedType<EnumIntRangeU>,
    pub _parent: SharedType<EnumIntRangeU>,
    pub _self: SharedType<Self>,
    f1: RefCell<EnumIntRangeU_Constants>,
    f2: RefCell<EnumIntRangeU_Constants>,
    _io: RefCell<BytesReader>,
}
impl KStruct for EnumIntRangeU {
    type Root = EnumIntRangeU;
    type Parent = EnumIntRangeU;

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
        *self_rc.f1.borrow_mut() = (_io.read_u4be()? as i64).try_into()?;
        *self_rc.f2.borrow_mut() = (_io.read_u4be()? as i64).try_into()?;
        Ok(())
    }
}
impl EnumIntRangeU {
}
impl EnumIntRangeU {
    pub fn f1(&self) -> Ref<'_, EnumIntRangeU_Constants> {
        self.f1.borrow()
    }
}
impl EnumIntRangeU {
    pub fn f2(&self) -> Ref<'_, EnumIntRangeU_Constants> {
        self.f2.borrow()
    }
}
impl EnumIntRangeU {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
#[derive(Debug, PartialEq, Clone)]
pub enum EnumIntRangeU_Constants {
    Zero,
    IntMax,
    Unknown(i64),
}

impl TryFrom<i64> for EnumIntRangeU_Constants {
    type Error = KError;
    fn try_from(flag: i64) -> KResult<EnumIntRangeU_Constants> {
        match flag {
            0 => Ok(EnumIntRangeU_Constants::Zero),
            4294967295 => Ok(EnumIntRangeU_Constants::IntMax),
            _ => Ok(EnumIntRangeU_Constants::Unknown(flag)),
        }
    }
}

impl From<&EnumIntRangeU_Constants> for i64 {
    fn from(v: &EnumIntRangeU_Constants) -> Self {
        match *v {
            EnumIntRangeU_Constants::Zero => 0,
            EnumIntRangeU_Constants::IntMax => 4294967295,
            EnumIntRangeU_Constants::Unknown(v) => v
        }
    }
}

impl Default for EnumIntRangeU_Constants {
    fn default() -> Self { EnumIntRangeU_Constants::Unknown(0) }
}

