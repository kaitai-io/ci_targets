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
use super::enum_to_i_class_border_2::EnumToIClassBorder2;

#[derive(Default, Debug, Clone)]
pub struct EnumToIClassBorder1 {
    pub _root: SharedType<EnumToIClassBorder1>,
    pub _parent: SharedType<EnumToIClassBorder1>,
    pub _self: SharedType<Self>,
    pet_1: RefCell<EnumToIClassBorder1_Animal>,
    pet_2: RefCell<EnumToIClassBorder1_Animal>,
    _io: RefCell<BytesReader>,
    f_checker: Cell<bool>,
    checker: RefCell<OptRc<EnumToIClassBorder2>>,
    f_some_dog: Cell<bool>,
    some_dog: RefCell<EnumToIClassBorder1_Animal>,
}
impl KStruct for EnumToIClassBorder1 {
    type Root = EnumToIClassBorder1;
    type Parent = EnumToIClassBorder1;

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
        *self_rc.pet_1.borrow_mut() = (_io.read_u4le()? as i64).try_into()?;
        *self_rc.pet_2.borrow_mut() = (_io.read_u4le()? as i64).try_into()?;
        Ok(())
    }
}
impl EnumToIClassBorder1 {
    pub fn checker(
        &self
    ) -> KResult<Ref<OptRc<EnumToIClassBorder2>>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_checker.get() {
            return Ok(self.checker.borrow());
        }
        let _pos = _io.pos();
        _io.seek(0 as usize)?;
        let f = |t : &mut EnumToIClassBorder2| Ok(t.set_params(&OptRc::new(&_rrc)));
        let t = Self::read_into_with_init::<_, EnumToIClassBorder2>(&*_io, None, None, &f)?.into();
        *self.checker.borrow_mut() = t;
        _io.seek(_pos)?;
        Ok(self.checker.borrow())
    }
    pub fn some_dog(
        &self
    ) -> KResult<Ref<EnumToIClassBorder1_Animal>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_some_dog.get() {
            return Ok(self.some_dog.borrow());
        }
        self.f_some_dog.set(true);
        *self.some_dog.borrow_mut() = (4 as i64).try_into()?;
        Ok(self.some_dog.borrow())
    }
}
impl EnumToIClassBorder1 {
    pub fn pet_1(&self) -> Ref<EnumToIClassBorder1_Animal> {
        self.pet_1.borrow()
    }
}
impl EnumToIClassBorder1 {
    pub fn pet_2(&self) -> Ref<EnumToIClassBorder1_Animal> {
        self.pet_2.borrow()
    }
}
impl EnumToIClassBorder1 {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
#[derive(Debug, PartialEq, Clone)]
pub enum EnumToIClassBorder1_Animal {
    Dog,
    Cat,
    Chicken,
    Unknown(i64),
}

impl TryFrom<i64> for EnumToIClassBorder1_Animal {
    type Error = KError;
    fn try_from(flag: i64) -> KResult<EnumToIClassBorder1_Animal> {
        match flag {
            4 => Ok(EnumToIClassBorder1_Animal::Dog),
            7 => Ok(EnumToIClassBorder1_Animal::Cat),
            12 => Ok(EnumToIClassBorder1_Animal::Chicken),
            _ => Ok(EnumToIClassBorder1_Animal::Unknown(flag)),
        }
    }
}

impl From<&EnumToIClassBorder1_Animal> for i64 {
    fn from(v: &EnumToIClassBorder1_Animal) -> Self {
        match *v {
            EnumToIClassBorder1_Animal::Dog => 4,
            EnumToIClassBorder1_Animal::Cat => 7,
            EnumToIClassBorder1_Animal::Chicken => 12,
            EnumToIClassBorder1_Animal::Unknown(v) => v
        }
    }
}

impl Default for EnumToIClassBorder1_Animal {
    fn default() -> Self { EnumToIClassBorder1_Animal::Unknown(0) }
}

