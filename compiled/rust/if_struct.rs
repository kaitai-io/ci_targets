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
pub struct IfStruct {
    pub _root: SharedType<IfStruct>,
    pub _parent: SharedType<IfStruct>,
    pub _self: SharedType<Self>,
    op1: RefCell<OptRc<IfStruct_Operation>>,
    op2: RefCell<OptRc<IfStruct_Operation>>,
    op3: RefCell<OptRc<IfStruct_Operation>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for IfStruct {
    type Root = IfStruct;
    type Parent = IfStruct;

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
        let t = Self::read_into::<_, IfStruct_Operation>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.op1.borrow_mut() = t;
        let t = Self::read_into::<_, IfStruct_Operation>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.op2.borrow_mut() = t;
        let t = Self::read_into::<_, IfStruct_Operation>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.op3.borrow_mut() = t;
        Ok(())
    }
}
impl IfStruct {
}
impl IfStruct {
    pub fn op1(&self) -> Ref<'_, OptRc<IfStruct_Operation>> {
        self.op1.borrow()
    }
}
impl IfStruct {
    pub fn op2(&self) -> Ref<'_, OptRc<IfStruct_Operation>> {
        self.op2.borrow()
    }
}
impl IfStruct {
    pub fn op3(&self) -> Ref<'_, OptRc<IfStruct_Operation>> {
        self.op3.borrow()
    }
}
impl IfStruct {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct IfStruct_ArgStr {
    pub _root: SharedType<IfStruct>,
    pub _parent: SharedType<IfStruct_Operation>,
    pub _self: SharedType<Self>,
    len: RefCell<u8>,
    str: RefCell<String>,
    _io: RefCell<BytesReader>,
}
impl KStruct for IfStruct_ArgStr {
    type Root = IfStruct;
    type Parent = IfStruct_Operation;

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
        *self_rc.len.borrow_mut() = _io.read_u1()?.into();
        *self_rc.str.borrow_mut() = bytes_to_str(&_io.read_bytes(*self_rc.len() as usize)?.into(), "UTF-8")?;
        Ok(())
    }
}
impl IfStruct_ArgStr {
}
impl IfStruct_ArgStr {
    pub fn len(&self) -> Ref<'_, u8> {
        self.len.borrow()
    }
}
impl IfStruct_ArgStr {
    pub fn str(&self) -> Ref<'_, String> {
        self.str.borrow()
    }
}
impl IfStruct_ArgStr {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct IfStruct_ArgTuple {
    pub _root: SharedType<IfStruct>,
    pub _parent: SharedType<IfStruct_Operation>,
    pub _self: SharedType<Self>,
    num1: RefCell<u8>,
    num2: RefCell<u8>,
    _io: RefCell<BytesReader>,
}
impl KStruct for IfStruct_ArgTuple {
    type Root = IfStruct;
    type Parent = IfStruct_Operation;

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
        *self_rc.num1.borrow_mut() = _io.read_u1()?.into();
        *self_rc.num2.borrow_mut() = _io.read_u1()?.into();
        Ok(())
    }
}
impl IfStruct_ArgTuple {
}
impl IfStruct_ArgTuple {
    pub fn num1(&self) -> Ref<'_, u8> {
        self.num1.borrow()
    }
}
impl IfStruct_ArgTuple {
    pub fn num2(&self) -> Ref<'_, u8> {
        self.num2.borrow()
    }
}
impl IfStruct_ArgTuple {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct IfStruct_Operation {
    pub _root: SharedType<IfStruct>,
    pub _parent: SharedType<IfStruct>,
    pub _self: SharedType<Self>,
    opcode: RefCell<u8>,
    arg_tuple: RefCell<OptRc<IfStruct_ArgTuple>>,
    arg_str: RefCell<OptRc<IfStruct_ArgStr>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for IfStruct_Operation {
    type Root = IfStruct;
    type Parent = IfStruct;

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
        *self_rc.opcode.borrow_mut() = _io.read_u1()?.into();
        if ((*self_rc.opcode() as u8) == (84 as u8)) {
            let t = Self::read_into::<_, IfStruct_ArgTuple>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
            *self_rc.arg_tuple.borrow_mut() = t;
        }
        if ((*self_rc.opcode() as u8) == (83 as u8)) {
            let t = Self::read_into::<_, IfStruct_ArgStr>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
            *self_rc.arg_str.borrow_mut() = t;
        }
        Ok(())
    }
}
impl IfStruct_Operation {
}
impl IfStruct_Operation {
    pub fn opcode(&self) -> Ref<'_, u8> {
        self.opcode.borrow()
    }
}
impl IfStruct_Operation {
    pub fn arg_tuple(&self) -> Ref<'_, OptRc<IfStruct_ArgTuple>> {
        self.arg_tuple.borrow()
    }
}
impl IfStruct_Operation {
    pub fn arg_str(&self) -> Ref<'_, OptRc<IfStruct_ArgStr>> {
        self.arg_str.borrow()
    }
}
impl IfStruct_Operation {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
