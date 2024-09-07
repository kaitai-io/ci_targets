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
pub struct BitsEnum {
    pub _root: SharedType<BitsEnum>,
    pub _parent: SharedType<BitsEnum>,
    pub _self: SharedType<Self>,
    one: RefCell<BitsEnum_Animal>,
    two: RefCell<BitsEnum_Animal>,
    three: RefCell<BitsEnum_Animal>,
    _io: RefCell<BytesReader>,
}
impl KStruct for BitsEnum {
    type Root = BitsEnum;
    type Parent = BitsEnum;

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
        *self_rc.one.borrow_mut() = (_io.read_bits_int_be(4)? as i64).try_into()?;
        *self_rc.two.borrow_mut() = (_io.read_bits_int_be(8)? as i64).try_into()?;
        *self_rc.three.borrow_mut() = (_io.read_bits_int_be(1)? as i64).try_into()?;
        Ok(())
    }
}
impl BitsEnum {
}
impl BitsEnum {
    pub fn one(&self) -> Ref<BitsEnum_Animal> {
        self.one.borrow()
    }
}
impl BitsEnum {
    pub fn two(&self) -> Ref<BitsEnum_Animal> {
        self.two.borrow()
    }
}
impl BitsEnum {
    pub fn three(&self) -> Ref<BitsEnum_Animal> {
        self.three.borrow()
    }
}
impl BitsEnum {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
#[derive(Debug, PartialEq, Clone)]
pub enum BitsEnum_Animal {
    Cat,
    Dog,
    Horse,
    Platypus,
    Unknown(i64),
}

impl TryFrom<i64> for BitsEnum_Animal {
    type Error = KError;
    fn try_from(flag: i64) -> KResult<BitsEnum_Animal> {
        match flag {
            0 => Ok(BitsEnum_Animal::Cat),
            1 => Ok(BitsEnum_Animal::Dog),
            4 => Ok(BitsEnum_Animal::Horse),
            5 => Ok(BitsEnum_Animal::Platypus),
            _ => Ok(BitsEnum_Animal::Unknown(flag)),
        }
    }
}

impl From<&BitsEnum_Animal> for i64 {
    fn from(v: &BitsEnum_Animal) -> Self {
        match *v {
            BitsEnum_Animal::Cat => 0,
            BitsEnum_Animal::Dog => 1,
            BitsEnum_Animal::Horse => 4,
            BitsEnum_Animal::Platypus => 5,
            BitsEnum_Animal::Unknown(v) => v
        }
    }
}

impl Default for BitsEnum_Animal {
    fn default() -> Self { BitsEnum_Animal::Unknown(0) }
}

