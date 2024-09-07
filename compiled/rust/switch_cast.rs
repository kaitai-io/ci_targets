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
pub struct SwitchCast {
    pub _root: SharedType<SwitchCast>,
    pub _parent: SharedType<SwitchCast>,
    pub _self: SharedType<Self>,
    opcodes: RefCell<Vec<OptRc<SwitchCast_Opcode>>>,
    _io: RefCell<BytesReader>,
    f_err_cast: Cell<bool>,
    err_cast: RefCell<OptRc<SwitchCast_Strval>>,
    f_first_obj: Cell<bool>,
    first_obj: RefCell<OptRc<SwitchCast_Strval>>,
    f_second_val: Cell<bool>,
    second_val: RefCell<u8>,
}
impl KStruct for SwitchCast {
    type Root = SwitchCast;
    type Parent = SwitchCast;

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
        *self_rc.opcodes.borrow_mut() = Vec::new();
        {
            let mut _i = 0;
            while !_io.is_eof() {
                let t = Self::read_into::<_, SwitchCast_Opcode>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                self_rc.opcodes.borrow_mut().push(t);
                _i += 1;
            }
        }
        Ok(())
    }
}
impl SwitchCast {
    pub fn err_cast(
        &self
    ) -> KResult<Ref<OptRc<SwitchCast_Strval>>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_err_cast.get() {
            return Ok(self.err_cast.borrow());
        }
        *self.err_cast.borrow_mut() = Into::<OptRc<SwitchCast_Strval>>::into(&*self.opcodes()[2 as usize].body().as_ref().unwrap()).clone();
        Ok(self.err_cast.borrow())
    }
    pub fn first_obj(
        &self
    ) -> KResult<Ref<OptRc<SwitchCast_Strval>>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_first_obj.get() {
            return Ok(self.first_obj.borrow());
        }
        *self.first_obj.borrow_mut() = Into::<OptRc<SwitchCast_Strval>>::into(&*self.opcodes()[0 as usize].body().as_ref().unwrap()).clone();
        Ok(self.first_obj.borrow())
    }
    pub fn second_val(
        &self
    ) -> KResult<Ref<u8>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_second_val.get() {
            return Ok(self.second_val.borrow());
        }
        self.f_second_val.set(true);
        *self.second_val.borrow_mut() = (*Into::<OptRc<SwitchCast_Intval>>::into(&*self.opcodes()[1 as usize].body().as_ref().unwrap()).value()) as u8;
        Ok(self.second_val.borrow())
    }
}
impl SwitchCast {
    pub fn opcodes(&self) -> Ref<Vec<OptRc<SwitchCast_Opcode>>> {
        self.opcodes.borrow()
    }
}
impl SwitchCast {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct SwitchCast_Intval {
    pub _root: SharedType<SwitchCast>,
    pub _parent: SharedType<SwitchCast_Opcode>,
    pub _self: SharedType<Self>,
    value: RefCell<u8>,
    _io: RefCell<BytesReader>,
}
impl KStruct for SwitchCast_Intval {
    type Root = SwitchCast;
    type Parent = SwitchCast_Opcode;

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
        *self_rc.value.borrow_mut() = _io.read_u1()?.into();
        Ok(())
    }
}
impl SwitchCast_Intval {
}
impl SwitchCast_Intval {
    pub fn value(&self) -> Ref<u8> {
        self.value.borrow()
    }
}
impl SwitchCast_Intval {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct SwitchCast_Opcode {
    pub _root: SharedType<SwitchCast>,
    pub _parent: SharedType<SwitchCast>,
    pub _self: SharedType<Self>,
    code: RefCell<u8>,
    body: RefCell<Option<SwitchCast_Opcode_Body>>,
    _io: RefCell<BytesReader>,
}
#[derive(Debug, Clone)]
pub enum SwitchCast_Opcode_Body {
    SwitchCast_Intval(OptRc<SwitchCast_Intval>),
    SwitchCast_Strval(OptRc<SwitchCast_Strval>),
}
impl From<&SwitchCast_Opcode_Body> for OptRc<SwitchCast_Intval> {
    fn from(v: &SwitchCast_Opcode_Body) -> Self {
        if let SwitchCast_Opcode_Body::SwitchCast_Intval(x) = v {
            return x.clone();
        }
        panic!("expected SwitchCast_Opcode_Body::SwitchCast_Intval, got {:?}", v)
    }
}
impl From<OptRc<SwitchCast_Intval>> for SwitchCast_Opcode_Body {
    fn from(v: OptRc<SwitchCast_Intval>) -> Self {
        Self::SwitchCast_Intval(v)
    }
}
impl From<&SwitchCast_Opcode_Body> for OptRc<SwitchCast_Strval> {
    fn from(v: &SwitchCast_Opcode_Body) -> Self {
        if let SwitchCast_Opcode_Body::SwitchCast_Strval(x) = v {
            return x.clone();
        }
        panic!("expected SwitchCast_Opcode_Body::SwitchCast_Strval, got {:?}", v)
    }
}
impl From<OptRc<SwitchCast_Strval>> for SwitchCast_Opcode_Body {
    fn from(v: OptRc<SwitchCast_Strval>) -> Self {
        Self::SwitchCast_Strval(v)
    }
}
impl KStruct for SwitchCast_Opcode {
    type Root = SwitchCast;
    type Parent = SwitchCast;

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
        *self_rc.code.borrow_mut() = _io.read_u1()?.into();
        match *self_rc.code() {
            73 => {
                let t = Self::read_into::<_, SwitchCast_Intval>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                *self_rc.body.borrow_mut() = Some(t);
            }
            83 => {
                let t = Self::read_into::<_, SwitchCast_Strval>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                *self_rc.body.borrow_mut() = Some(t);
            }
            _ => {}
        }
        Ok(())
    }
}
impl SwitchCast_Opcode {
}
impl SwitchCast_Opcode {
    pub fn code(&self) -> Ref<u8> {
        self.code.borrow()
    }
}
impl SwitchCast_Opcode {
    pub fn body(&self) -> Ref<Option<SwitchCast_Opcode_Body>> {
        self.body.borrow()
    }
}
impl SwitchCast_Opcode {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct SwitchCast_Strval {
    pub _root: SharedType<SwitchCast>,
    pub _parent: SharedType<SwitchCast_Opcode>,
    pub _self: SharedType<Self>,
    value: RefCell<String>,
    _io: RefCell<BytesReader>,
}
impl KStruct for SwitchCast_Strval {
    type Root = SwitchCast;
    type Parent = SwitchCast_Opcode;

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
        *self_rc.value.borrow_mut() = bytes_to_str(&_io.read_bytes_term(0, false, true, true)?.into(), "ASCII")?;
        Ok(())
    }
}
impl SwitchCast_Strval {
}
impl SwitchCast_Strval {
    pub fn value(&self) -> Ref<String> {
        self.value.borrow()
    }
}
impl SwitchCast_Strval {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
