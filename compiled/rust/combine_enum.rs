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
pub struct CombineEnum {
    pub _root: SharedType<CombineEnum>,
    pub _parent: SharedType<CombineEnum>,
    pub _self: SharedType<Self>,
    enum_u4: RefCell<CombineEnum_Animal>,
    enum_u2: RefCell<CombineEnum_Animal>,
    _io: RefCell<BytesReader>,
    f_enum_u4_u2: Cell<bool>,
    enum_u4_u2: RefCell<CombineEnum_Animal>,
}
impl KStruct for CombineEnum {
    type Root = CombineEnum;
    type Parent = CombineEnum;

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
        *self_rc.enum_u4.borrow_mut() = (_io.read_u4le()? as i64).try_into()?;
        *self_rc.enum_u2.borrow_mut() = (_io.read_u2le()? as i64).try_into()?;
        Ok(())
    }
}
impl CombineEnum {
    pub fn enum_u4_u2(
        &self
    ) -> KResult<Ref<CombineEnum_Animal>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_enum_u4_u2.get() {
            return Ok(self.enum_u4_u2.borrow());
        }
        self.f_enum_u4_u2.set(true);
        *self.enum_u4_u2.borrow_mut() = if false { self.enum_u4().clone() } else { self.enum_u2().clone() };
        Ok(self.enum_u4_u2.borrow())
    }
}
impl CombineEnum {
    pub fn enum_u4(&self) -> Ref<CombineEnum_Animal> {
        self.enum_u4.borrow()
    }
}
impl CombineEnum {
    pub fn enum_u2(&self) -> Ref<CombineEnum_Animal> {
        self.enum_u2.borrow()
    }
}
impl CombineEnum {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
#[derive(Debug, PartialEq, Clone)]
pub enum CombineEnum_Animal {
    Pig,
    Horse,
    Unknown(i64),
}

impl TryFrom<i64> for CombineEnum_Animal {
    type Error = KError;
    fn try_from(flag: i64) -> KResult<CombineEnum_Animal> {
        match flag {
            7 => Ok(CombineEnum_Animal::Pig),
            12 => Ok(CombineEnum_Animal::Horse),
            _ => Ok(CombineEnum_Animal::Unknown(flag)),
        }
    }
}

impl From<&CombineEnum_Animal> for i64 {
    fn from(v: &CombineEnum_Animal) -> Self {
        match *v {
            CombineEnum_Animal::Pig => 7,
            CombineEnum_Animal::Horse => 12,
            CombineEnum_Animal::Unknown(v) => v
        }
    }
}

impl Default for CombineEnum_Animal {
    fn default() -> Self { CombineEnum_Animal::Unknown(0) }
}

