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
pub struct CombineBool {
    pub _root: SharedType<CombineBool>,
    pub _parent: SharedType<CombineBool>,
    pub _self: SharedType<Self>,
    bool_bit: RefCell<bool>,
    _io: RefCell<BytesReader>,
    f_bool_calc: Cell<bool>,
    bool_calc: RefCell<bool>,
    f_bool_calc_bit: Cell<bool>,
    bool_calc_bit: RefCell<bool>,
}
impl KStruct for CombineBool {
    type Root = CombineBool;
    type Parent = CombineBool;

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
        *self_rc.bool_bit.borrow_mut() = _io.read_bits_int_be(1)? != 0;
        Ok(())
    }
}
impl CombineBool {
    pub fn bool_calc(
        &self
    ) -> KResult<Ref<'_, bool>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_bool_calc.get() {
            return Ok(self.bool_calc.borrow());
        }
        self.f_bool_calc.set(true);
        *self.bool_calc.borrow_mut() = (false) as bool;
        Ok(self.bool_calc.borrow())
    }
    pub fn bool_calc_bit(
        &self
    ) -> KResult<Ref<'_, bool>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_bool_calc_bit.get() {
            return Ok(self.bool_calc_bit.borrow());
        }
        self.f_bool_calc_bit.set(true);
        *self.bool_calc_bit.borrow_mut() = (if true { *self.bool_calc()? } else { *self.bool_bit() }) as bool;
        Ok(self.bool_calc_bit.borrow())
    }
}
impl CombineBool {
    pub fn bool_bit(&self) -> Ref<'_, bool> {
        self.bool_bit.borrow()
    }
}
impl CombineBool {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
