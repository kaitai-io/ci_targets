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
pub struct ParamsPassArrayInt {
    pub _root: SharedType<ParamsPassArrayInt>,
    pub _parent: SharedType<ParamsPassArrayInt>,
    pub _self: SharedType<Self>,
    ints: RefCell<Vec<u16>>,
    pass_ints: RefCell<OptRc<ParamsPassArrayInt_WantsInts>>,
    pass_ints_calc: RefCell<OptRc<ParamsPassArrayInt_WantsInts>>,
    _io: RefCell<BytesReader>,
    f_ints_calc: Cell<bool>,
    ints_calc: RefCell<Vec<u16>>,
}
impl KStruct for ParamsPassArrayInt {
    type Root = ParamsPassArrayInt;
    type Parent = ParamsPassArrayInt;

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
        *self_rc.ints.borrow_mut() = Vec::new();
        let l_ints = 3;
        for _i in 0..l_ints {
            self_rc.ints.borrow_mut().push(_io.read_u2le()?.into());
        }
        let f = |t : &mut ParamsPassArrayInt_WantsInts| Ok(t.set_params(&*self_rc.ints()));
        let t = Self::read_into_with_init::<_, ParamsPassArrayInt_WantsInts>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()), &f)?.into();
        *self_rc.pass_ints.borrow_mut() = t;
        let f = |t : &mut ParamsPassArrayInt_WantsInts| Ok(t.set_params(&*self_rc.ints_calc()?));
        let t = Self::read_into_with_init::<_, ParamsPassArrayInt_WantsInts>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()), &f)?.into();
        *self_rc.pass_ints_calc.borrow_mut() = t;
        Ok(())
    }
}
impl ParamsPassArrayInt {
    pub fn ints_calc(
        &self
    ) -> KResult<Ref<Vec<u16>>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_ints_calc.get() {
            return Ok(self.ints_calc.borrow());
        }
        self.f_ints_calc.set(true);
        *self.ints_calc.borrow_mut() = vec![27643, 7].to_vec();
        Ok(self.ints_calc.borrow())
    }
}
impl ParamsPassArrayInt {
    pub fn ints(&self) -> Ref<Vec<u16>> {
        self.ints.borrow()
    }
}
impl ParamsPassArrayInt {
    pub fn pass_ints(&self) -> Ref<OptRc<ParamsPassArrayInt_WantsInts>> {
        self.pass_ints.borrow()
    }
}
impl ParamsPassArrayInt {
    pub fn pass_ints_calc(&self) -> Ref<OptRc<ParamsPassArrayInt_WantsInts>> {
        self.pass_ints_calc.borrow()
    }
}
impl ParamsPassArrayInt {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct ParamsPassArrayInt_WantsInts {
    pub _root: SharedType<ParamsPassArrayInt>,
    pub _parent: SharedType<ParamsPassArrayInt>,
    pub _self: SharedType<Self>,
    nums: RefCell<Vec<u16>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for ParamsPassArrayInt_WantsInts {
    type Root = ParamsPassArrayInt;
    type Parent = ParamsPassArrayInt;

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
        Ok(())
    }
}
impl ParamsPassArrayInt_WantsInts {
    pub fn nums(&self) -> Ref<Vec<u16>> {
        self.nums.borrow()
    }
}
impl ParamsPassArrayInt_WantsInts {
    pub fn set_params(&mut self, nums: &Vec<u16>) {
        *self.nums.borrow_mut() = nums.clone();
    }
}
impl ParamsPassArrayInt_WantsInts {
}
impl ParamsPassArrayInt_WantsInts {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
