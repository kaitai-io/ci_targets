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
pub struct ValidFailInEnum {
    pub _root: SharedType<ValidFailInEnum>,
    pub _parent: SharedType<ValidFailInEnum>,
    pub _self: SharedType<Self>,
    foo: RefCell<ValidFailInEnum_Animal>,
    _io: RefCell<BytesReader>,
}
impl KStruct for ValidFailInEnum {
    type Root = ValidFailInEnum;
    type Parent = ValidFailInEnum;

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
        *self_rc.foo.borrow_mut() = (_io.read_u4le()? as i64).try_into()?;
        Ok(())
    }
}
impl ValidFailInEnum {
}
impl ValidFailInEnum {
    pub fn foo(&self) -> Ref<ValidFailInEnum_Animal> {
        self.foo.borrow()
    }
}
impl ValidFailInEnum {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
#[derive(Debug, PartialEq, Clone)]
pub enum ValidFailInEnum_Animal {
    Dog,
    Chicken,
    Unknown(i64),
}

impl TryFrom<i64> for ValidFailInEnum_Animal {
    type Error = KError;
    fn try_from(flag: i64) -> KResult<ValidFailInEnum_Animal> {
        match flag {
            4 => Ok(ValidFailInEnum_Animal::Dog),
            12 => Ok(ValidFailInEnum_Animal::Chicken),
            _ => Ok(ValidFailInEnum_Animal::Unknown(flag)),
        }
    }
}

impl From<&ValidFailInEnum_Animal> for i64 {
    fn from(v: &ValidFailInEnum_Animal) -> Self {
        match *v {
            ValidFailInEnum_Animal::Dog => 4,
            ValidFailInEnum_Animal::Chicken => 12,
            ValidFailInEnum_Animal::Unknown(v) => v
        }
    }
}

impl Default for ValidFailInEnum_Animal {
    fn default() -> Self { ValidFailInEnum_Animal::Unknown(0) }
}

