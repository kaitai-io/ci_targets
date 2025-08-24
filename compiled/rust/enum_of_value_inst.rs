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
pub struct EnumOfValueInst {
    pub _root: SharedType<EnumOfValueInst>,
    pub _parent: SharedType<EnumOfValueInst>,
    pub _self: SharedType<Self>,
    pet_1: RefCell<EnumOfValueInst_Animal>,
    pet_2: RefCell<EnumOfValueInst_Animal>,
    _io: RefCell<BytesReader>,
    f_pet_3: Cell<bool>,
    pet_3: RefCell<EnumOfValueInst_Animal>,
    f_pet_4: Cell<bool>,
    pet_4: RefCell<EnumOfValueInst_Animal>,
}
impl KStruct for EnumOfValueInst {
    type Root = EnumOfValueInst;
    type Parent = EnumOfValueInst;

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
impl EnumOfValueInst {
    pub fn pet_3(
        &self
    ) -> KResult<Ref<'_, EnumOfValueInst_Animal>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_pet_3.get() {
            return Ok(self.pet_3.borrow());
        }
        self.f_pet_3.set(true);
        *self.pet_3.borrow_mut() = if *self.pet_1() == EnumOfValueInst_Animal::Cat { EnumOfValueInst_Animal::try_from(4)? } else { EnumOfValueInst_Animal::try_from(12)? };
        Ok(self.pet_3.borrow())
    }
    pub fn pet_4(
        &self
    ) -> KResult<Ref<'_, EnumOfValueInst_Animal>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_pet_4.get() {
            return Ok(self.pet_4.borrow());
        }
        self.f_pet_4.set(true);
        *self.pet_4.borrow_mut() = if *self.pet_1() == EnumOfValueInst_Animal::Cat { EnumOfValueInst_Animal::Dog.clone() } else { EnumOfValueInst_Animal::Chicken.clone() };
        Ok(self.pet_4.borrow())
    }
}
impl EnumOfValueInst {
    pub fn pet_1(&self) -> Ref<'_, EnumOfValueInst_Animal> {
        self.pet_1.borrow()
    }
}
impl EnumOfValueInst {
    pub fn pet_2(&self) -> Ref<'_, EnumOfValueInst_Animal> {
        self.pet_2.borrow()
    }
}
impl EnumOfValueInst {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
#[derive(Debug, PartialEq, Clone)]
pub enum EnumOfValueInst_Animal {
    Dog,
    Cat,
    Chicken,
    Unknown(i64),
}

impl TryFrom<i64> for EnumOfValueInst_Animal {
    type Error = KError;
    fn try_from(flag: i64) -> KResult<EnumOfValueInst_Animal> {
        match flag {
            4 => Ok(EnumOfValueInst_Animal::Dog),
            7 => Ok(EnumOfValueInst_Animal::Cat),
            12 => Ok(EnumOfValueInst_Animal::Chicken),
            _ => Ok(EnumOfValueInst_Animal::Unknown(flag)),
        }
    }
}

impl From<&EnumOfValueInst_Animal> for i64 {
    fn from(v: &EnumOfValueInst_Animal) -> Self {
        match *v {
            EnumOfValueInst_Animal::Dog => 4,
            EnumOfValueInst_Animal::Cat => 7,
            EnumOfValueInst_Animal::Chicken => 12,
            EnumOfValueInst_Animal::Unknown(v) => v
        }
    }
}

impl Default for EnumOfValueInst_Animal {
    fn default() -> Self { EnumOfValueInst_Animal::Unknown(0) }
}

