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
pub struct ParamsPassArrayUsertype {
    pub _root: SharedType<ParamsPassArrayUsertype>,
    pub _parent: SharedType<ParamsPassArrayUsertype>,
    pub _self: SharedType<Self>,
    blocks: RefCell<Vec<OptRc<ParamsPassArrayUsertype_Block>>>,
    pass_blocks: RefCell<OptRc<ParamsPassArrayUsertype_ParamType>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for ParamsPassArrayUsertype {
    type Root = ParamsPassArrayUsertype;
    type Parent = ParamsPassArrayUsertype;

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
        *self_rc.blocks.borrow_mut() = Vec::new();
        let l_blocks = 2;
        for _i in 0..l_blocks {
            let t = Self::read_into::<_, ParamsPassArrayUsertype_Block>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
            self_rc.blocks.borrow_mut().push(t);
        }
        let f = |t : &mut ParamsPassArrayUsertype_ParamType| Ok(t.set_params(&*self_rc.blocks()));
        let t = Self::read_into_with_init::<_, ParamsPassArrayUsertype_ParamType>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()), &f)?.into();
        *self_rc.pass_blocks.borrow_mut() = t;
        Ok(())
    }
}
impl ParamsPassArrayUsertype {
}
impl ParamsPassArrayUsertype {
    pub fn blocks(&self) -> Ref<Vec<OptRc<ParamsPassArrayUsertype_Block>>> {
        self.blocks.borrow()
    }
}
impl ParamsPassArrayUsertype {
    pub fn pass_blocks(&self) -> Ref<OptRc<ParamsPassArrayUsertype_ParamType>> {
        self.pass_blocks.borrow()
    }
}
impl ParamsPassArrayUsertype {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct ParamsPassArrayUsertype_Block {
    pub _root: SharedType<ParamsPassArrayUsertype>,
    pub _parent: SharedType<ParamsPassArrayUsertype>,
    pub _self: SharedType<Self>,
    foo: RefCell<u8>,
    _io: RefCell<BytesReader>,
}
impl KStruct for ParamsPassArrayUsertype_Block {
    type Root = ParamsPassArrayUsertype;
    type Parent = ParamsPassArrayUsertype;

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
        *self_rc.foo.borrow_mut() = _io.read_u1()?.into();
        Ok(())
    }
}
impl ParamsPassArrayUsertype_Block {
}
impl ParamsPassArrayUsertype_Block {
    pub fn foo(&self) -> Ref<u8> {
        self.foo.borrow()
    }
}
impl ParamsPassArrayUsertype_Block {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct ParamsPassArrayUsertype_ParamType {
    pub _root: SharedType<ParamsPassArrayUsertype>,
    pub _parent: SharedType<ParamsPassArrayUsertype>,
    pub _self: SharedType<Self>,
    bar: RefCell<Vec<OptRc<ParamsPassArrayUsertype_Block>>>,
    one: RefCell<Vec<u8>>,
    two: RefCell<Vec<u8>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for ParamsPassArrayUsertype_ParamType {
    type Root = ParamsPassArrayUsertype;
    type Parent = ParamsPassArrayUsertype;

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
        *self_rc.one.borrow_mut() = _io.read_bytes(*self_rc.bar()[0 as usize].foo() as usize)?.into();
        *self_rc.two.borrow_mut() = _io.read_bytes(*self_rc.bar()[1 as usize].foo() as usize)?.into();
        Ok(())
    }
}
impl ParamsPassArrayUsertype_ParamType {
    pub fn bar(&self) -> Ref<Vec<OptRc<ParamsPassArrayUsertype_Block>>> {
        self.bar.borrow()
    }
}
impl ParamsPassArrayUsertype_ParamType {
    pub fn set_params(&mut self, bar: &Vec<OptRc<ParamsPassArrayUsertype_Block>>) {
        *self.bar.borrow_mut() = bar.clone();
    }
}
impl ParamsPassArrayUsertype_ParamType {
}
impl ParamsPassArrayUsertype_ParamType {
    pub fn one(&self) -> Ref<Vec<u8>> {
        self.one.borrow()
    }
}
impl ParamsPassArrayUsertype_ParamType {
    pub fn two(&self) -> Ref<Vec<u8>> {
        self.two.borrow()
    }
}
impl ParamsPassArrayUsertype_ParamType {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
