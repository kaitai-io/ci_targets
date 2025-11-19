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
pub struct ParamsPassBool {
    pub _root: SharedType<ParamsPassBool>,
    pub _parent: SharedType<ParamsPassBool>,
    pub _self: SharedType<Self>,
    s_false: RefCell<bool>,
    s_true: RefCell<bool>,
    seq_b1: RefCell<OptRc<ParamsPassBool_ParamTypeB1>>,
    seq_bool: RefCell<OptRc<ParamsPassBool_ParamTypeBool>>,
    literal_b1: RefCell<OptRc<ParamsPassBool_ParamTypeB1>>,
    literal_bool: RefCell<OptRc<ParamsPassBool_ParamTypeBool>>,
    inst_b1: RefCell<OptRc<ParamsPassBool_ParamTypeB1>>,
    inst_bool: RefCell<OptRc<ParamsPassBool_ParamTypeBool>>,
    _io: RefCell<BytesReader>,
    f_v_false: Cell<bool>,
    v_false: RefCell<bool>,
    f_v_true: Cell<bool>,
    v_true: RefCell<bool>,
}
impl KStruct for ParamsPassBool {
    type Root = ParamsPassBool;
    type Parent = ParamsPassBool;

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
        *self_rc.s_false.borrow_mut() = _io.read_bits_int_be(1)? != 0;
        *self_rc.s_true.borrow_mut() = _io.read_bits_int_be(1)? != 0;
        let f = |t : &mut ParamsPassBool_ParamTypeB1| Ok(t.set_params(*self_rc.s_true()));
        let t = Self::read_into_with_init::<_, ParamsPassBool_ParamTypeB1>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()), &f)?.into();
        *self_rc.seq_b1.borrow_mut() = t;
        let f = |t : &mut ParamsPassBool_ParamTypeBool| Ok(t.set_params(*self_rc.s_false()));
        let t = Self::read_into_with_init::<_, ParamsPassBool_ParamTypeBool>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()), &f)?.into();
        *self_rc.seq_bool.borrow_mut() = t;
        let f = |t : &mut ParamsPassBool_ParamTypeB1| Ok(t.set_params(false));
        let t = Self::read_into_with_init::<_, ParamsPassBool_ParamTypeB1>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()), &f)?.into();
        *self_rc.literal_b1.borrow_mut() = t;
        let f = |t : &mut ParamsPassBool_ParamTypeBool| Ok(t.set_params(true));
        let t = Self::read_into_with_init::<_, ParamsPassBool_ParamTypeBool>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()), &f)?.into();
        *self_rc.literal_bool.borrow_mut() = t;
        let f = |t : &mut ParamsPassBool_ParamTypeB1| Ok(t.set_params(*self_rc.v_true()?));
        let t = Self::read_into_with_init::<_, ParamsPassBool_ParamTypeB1>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()), &f)?.into();
        *self_rc.inst_b1.borrow_mut() = t;
        let f = |t : &mut ParamsPassBool_ParamTypeBool| Ok(t.set_params(*self_rc.v_false()?));
        let t = Self::read_into_with_init::<_, ParamsPassBool_ParamTypeBool>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()), &f)?.into();
        *self_rc.inst_bool.borrow_mut() = t;
        Ok(())
    }
}
impl ParamsPassBool {
    pub fn v_false(
        &self
    ) -> KResult<Ref<'_, bool>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_v_false.get() {
            return Ok(self.v_false.borrow());
        }
        self.f_v_false.set(true);
        *self.v_false.borrow_mut() = (false) as bool;
        Ok(self.v_false.borrow())
    }
    pub fn v_true(
        &self
    ) -> KResult<Ref<'_, bool>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_v_true.get() {
            return Ok(self.v_true.borrow());
        }
        self.f_v_true.set(true);
        *self.v_true.borrow_mut() = (true) as bool;
        Ok(self.v_true.borrow())
    }
}
impl ParamsPassBool {
    pub fn s_false(&self) -> Ref<'_, bool> {
        self.s_false.borrow()
    }
}
impl ParamsPassBool {
    pub fn s_true(&self) -> Ref<'_, bool> {
        self.s_true.borrow()
    }
}
impl ParamsPassBool {
    pub fn seq_b1(&self) -> Ref<'_, OptRc<ParamsPassBool_ParamTypeB1>> {
        self.seq_b1.borrow()
    }
}
impl ParamsPassBool {
    pub fn seq_bool(&self) -> Ref<'_, OptRc<ParamsPassBool_ParamTypeBool>> {
        self.seq_bool.borrow()
    }
}
impl ParamsPassBool {
    pub fn literal_b1(&self) -> Ref<'_, OptRc<ParamsPassBool_ParamTypeB1>> {
        self.literal_b1.borrow()
    }
}
impl ParamsPassBool {
    pub fn literal_bool(&self) -> Ref<'_, OptRc<ParamsPassBool_ParamTypeBool>> {
        self.literal_bool.borrow()
    }
}
impl ParamsPassBool {
    pub fn inst_b1(&self) -> Ref<'_, OptRc<ParamsPassBool_ParamTypeB1>> {
        self.inst_b1.borrow()
    }
}
impl ParamsPassBool {
    pub fn inst_bool(&self) -> Ref<'_, OptRc<ParamsPassBool_ParamTypeBool>> {
        self.inst_bool.borrow()
    }
}
impl ParamsPassBool {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct ParamsPassBool_ParamTypeB1 {
    pub _root: SharedType<ParamsPassBool>,
    pub _parent: SharedType<ParamsPassBool>,
    pub _self: SharedType<Self>,
    arg: RefCell<bool>,
    foo: RefCell<Vec<u8>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for ParamsPassBool_ParamTypeB1 {
    type Root = ParamsPassBool;
    type Parent = ParamsPassBool;

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
        *self_rc.foo.borrow_mut() = _io.read_bytes(if *self_rc.arg() { 1 } else { 2 } as usize)?.into();
        Ok(())
    }
}
impl ParamsPassBool_ParamTypeB1 {
    pub fn arg(&self) -> Ref<'_, bool> {
        self.arg.borrow()
    }
}
impl ParamsPassBool_ParamTypeB1 {
    pub fn set_params(&mut self, arg: bool) {
        *self.arg.borrow_mut() = arg;
    }
}
impl ParamsPassBool_ParamTypeB1 {
}
impl ParamsPassBool_ParamTypeB1 {
    pub fn foo(&self) -> Ref<'_, Vec<u8>> {
        self.foo.borrow()
    }
}
impl ParamsPassBool_ParamTypeB1 {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct ParamsPassBool_ParamTypeBool {
    pub _root: SharedType<ParamsPassBool>,
    pub _parent: SharedType<ParamsPassBool>,
    pub _self: SharedType<Self>,
    arg: RefCell<bool>,
    foo: RefCell<Vec<u8>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for ParamsPassBool_ParamTypeBool {
    type Root = ParamsPassBool;
    type Parent = ParamsPassBool;

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
        *self_rc.foo.borrow_mut() = _io.read_bytes(if *self_rc.arg() { 1 } else { 2 } as usize)?.into();
        Ok(())
    }
}
impl ParamsPassBool_ParamTypeBool {
    pub fn arg(&self) -> Ref<'_, bool> {
        self.arg.borrow()
    }
}
impl ParamsPassBool_ParamTypeBool {
    pub fn set_params(&mut self, arg: bool) {
        *self.arg.borrow_mut() = arg;
    }
}
impl ParamsPassBool_ParamTypeBool {
}
impl ParamsPassBool_ParamTypeBool {
    pub fn foo(&self) -> Ref<'_, Vec<u8>> {
        self.foo.borrow()
    }
}
impl ParamsPassBool_ParamTypeBool {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
