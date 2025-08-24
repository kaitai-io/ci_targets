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
pub struct ParamsPassArrayStr {
    pub _root: SharedType<ParamsPassArrayStr>,
    pub _parent: SharedType<ParamsPassArrayStr>,
    pub _self: SharedType<Self>,
    str_array: RefCell<Vec<String>>,
    pass_str_array: RefCell<OptRc<ParamsPassArrayStr_WantsStrs>>,
    pass_str_array_calc: RefCell<OptRc<ParamsPassArrayStr_WantsStrs>>,
    _io: RefCell<BytesReader>,
    f_str_array_calc: Cell<bool>,
    str_array_calc: RefCell<Vec<String>>,
}
impl KStruct for ParamsPassArrayStr {
    type Root = ParamsPassArrayStr;
    type Parent = ParamsPassArrayStr;

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
        *self_rc.str_array.borrow_mut() = Vec::new();
        let l_str_array = 3;
        for _i in 0..l_str_array {
            self_rc.str_array.borrow_mut().push(bytes_to_str(&_io.read_bytes(2 as usize)?.into(), "ASCII")?);
        }
        let f = |t : &mut ParamsPassArrayStr_WantsStrs| Ok(t.set_params(&*self_rc.str_array()));
        let t = Self::read_into_with_init::<_, ParamsPassArrayStr_WantsStrs>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()), &f)?.into();
        *self_rc.pass_str_array.borrow_mut() = t;
        let f = |t : &mut ParamsPassArrayStr_WantsStrs| Ok(t.set_params(&*self_rc.str_array_calc()?));
        let t = Self::read_into_with_init::<_, ParamsPassArrayStr_WantsStrs>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()), &f)?.into();
        *self_rc.pass_str_array_calc.borrow_mut() = t;
        Ok(())
    }
}
impl ParamsPassArrayStr {
    pub fn str_array_calc(
        &self
    ) -> KResult<Ref<'_, Vec<String>>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_str_array_calc.get() {
            return Ok(self.str_array_calc.borrow());
        }
        self.f_str_array_calc.set(true);
        *self.str_array_calc.borrow_mut() = vec!["aB".to_string(), "Cd".to_string()].to_vec();
        Ok(self.str_array_calc.borrow())
    }
}
impl ParamsPassArrayStr {
    pub fn str_array(&self) -> Ref<'_, Vec<String>> {
        self.str_array.borrow()
    }
}
impl ParamsPassArrayStr {
    pub fn pass_str_array(&self) -> Ref<'_, OptRc<ParamsPassArrayStr_WantsStrs>> {
        self.pass_str_array.borrow()
    }
}
impl ParamsPassArrayStr {
    pub fn pass_str_array_calc(&self) -> Ref<'_, OptRc<ParamsPassArrayStr_WantsStrs>> {
        self.pass_str_array_calc.borrow()
    }
}
impl ParamsPassArrayStr {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct ParamsPassArrayStr_WantsStrs {
    pub _root: SharedType<ParamsPassArrayStr>,
    pub _parent: SharedType<ParamsPassArrayStr>,
    pub _self: SharedType<Self>,
    strs: RefCell<Vec<String>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for ParamsPassArrayStr_WantsStrs {
    type Root = ParamsPassArrayStr;
    type Parent = ParamsPassArrayStr;

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
impl ParamsPassArrayStr_WantsStrs {
    pub fn strs(&self) -> Ref<'_, Vec<String>> {
        self.strs.borrow()
    }
}
impl ParamsPassArrayStr_WantsStrs {
    pub fn set_params(&mut self, strs: &Vec<String>) {
        *self.strs.borrow_mut() = strs.clone();
    }
}
impl ParamsPassArrayStr_WantsStrs {
}
impl ParamsPassArrayStr_WantsStrs {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
