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
pub struct CastNested {
    pub _root: SharedType<CastNested>,
    pub _parent: SharedType<CastNested>,
    pub _self: SharedType<Self>,
    opcodes: RefCell<Vec<OptRc<CastNested_Opcode>>>,
    _io: RefCell<BytesReader>,
    f_opcodes_0_str: Cell<bool>,
    opcodes_0_str: RefCell<OptRc<CastNested_Opcode_Strval>>,
    f_opcodes_0_str_value: Cell<bool>,
    opcodes_0_str_value: RefCell<String>,
    f_opcodes_1_int: Cell<bool>,
    opcodes_1_int: RefCell<OptRc<CastNested_Opcode_Intval>>,
    f_opcodes_1_int_value: Cell<bool>,
    opcodes_1_int_value: RefCell<u8>,
}
impl KStruct for CastNested {
    type Root = CastNested;
    type Parent = CastNested;

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
                let t = Self::read_into::<_, CastNested_Opcode>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                self_rc.opcodes.borrow_mut().push(t);
                _i += 1;
            }
        }
        Ok(())
    }
}
impl CastNested {
    pub fn opcodes_0_str(
        &self
    ) -> KResult<Ref<OptRc<CastNested_Opcode_Strval>>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_opcodes_0_str.get() {
            return Ok(self.opcodes_0_str.borrow());
        }
        *self.opcodes_0_str.borrow_mut() = Into::<OptRc<CastNested_Opcode_Strval>>::into(&*self.opcodes()[0 as usize].body().as_ref().unwrap()).clone();
        Ok(self.opcodes_0_str.borrow())
    }
    pub fn opcodes_0_str_value(
        &self
    ) -> KResult<Ref<String>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_opcodes_0_str_value.get() {
            return Ok(self.opcodes_0_str_value.borrow());
        }
        self.f_opcodes_0_str_value.set(true);
        *self.opcodes_0_str_value.borrow_mut() = Into::<OptRc<CastNested_Opcode_Strval>>::into(&*self.opcodes()[0 as usize].body().as_ref().unwrap()).value().to_string();
        Ok(self.opcodes_0_str_value.borrow())
    }
    pub fn opcodes_1_int(
        &self
    ) -> KResult<Ref<OptRc<CastNested_Opcode_Intval>>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_opcodes_1_int.get() {
            return Ok(self.opcodes_1_int.borrow());
        }
        *self.opcodes_1_int.borrow_mut() = Into::<OptRc<CastNested_Opcode_Intval>>::into(&*self.opcodes()[1 as usize].body().as_ref().unwrap()).clone();
        Ok(self.opcodes_1_int.borrow())
    }
    pub fn opcodes_1_int_value(
        &self
    ) -> KResult<Ref<u8>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_opcodes_1_int_value.get() {
            return Ok(self.opcodes_1_int_value.borrow());
        }
        self.f_opcodes_1_int_value.set(true);
        *self.opcodes_1_int_value.borrow_mut() = (*Into::<OptRc<CastNested_Opcode_Intval>>::into(&*self.opcodes()[1 as usize].body().as_ref().unwrap()).value()) as u8;
        Ok(self.opcodes_1_int_value.borrow())
    }
}
impl CastNested {
    pub fn opcodes(&self) -> Ref<Vec<OptRc<CastNested_Opcode>>> {
        self.opcodes.borrow()
    }
}
impl CastNested {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct CastNested_Opcode {
    pub _root: SharedType<CastNested>,
    pub _parent: SharedType<CastNested>,
    pub _self: SharedType<Self>,
    code: RefCell<u8>,
    body: RefCell<Option<CastNested_Opcode_Body>>,
    _io: RefCell<BytesReader>,
}
#[derive(Debug, Clone)]
pub enum CastNested_Opcode_Body {
    CastNested_Opcode_Intval(OptRc<CastNested_Opcode_Intval>),
    CastNested_Opcode_Strval(OptRc<CastNested_Opcode_Strval>),
}
impl From<&CastNested_Opcode_Body> for OptRc<CastNested_Opcode_Intval> {
    fn from(v: &CastNested_Opcode_Body) -> Self {
        if let CastNested_Opcode_Body::CastNested_Opcode_Intval(x) = v {
            return x.clone();
        }
        panic!("expected CastNested_Opcode_Body::CastNested_Opcode_Intval, got {:?}", v)
    }
}
impl From<OptRc<CastNested_Opcode_Intval>> for CastNested_Opcode_Body {
    fn from(v: OptRc<CastNested_Opcode_Intval>) -> Self {
        Self::CastNested_Opcode_Intval(v)
    }
}
impl From<&CastNested_Opcode_Body> for OptRc<CastNested_Opcode_Strval> {
    fn from(v: &CastNested_Opcode_Body) -> Self {
        if let CastNested_Opcode_Body::CastNested_Opcode_Strval(x) = v {
            return x.clone();
        }
        panic!("expected CastNested_Opcode_Body::CastNested_Opcode_Strval, got {:?}", v)
    }
}
impl From<OptRc<CastNested_Opcode_Strval>> for CastNested_Opcode_Body {
    fn from(v: OptRc<CastNested_Opcode_Strval>) -> Self {
        Self::CastNested_Opcode_Strval(v)
    }
}
impl KStruct for CastNested_Opcode {
    type Root = CastNested;
    type Parent = CastNested;

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
                let t = Self::read_into::<_, CastNested_Opcode_Intval>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                *self_rc.body.borrow_mut() = Some(t);
            }
            83 => {
                let t = Self::read_into::<_, CastNested_Opcode_Strval>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                *self_rc.body.borrow_mut() = Some(t);
            }
            _ => {}
        }
        Ok(())
    }
}
impl CastNested_Opcode {
}
impl CastNested_Opcode {
    pub fn code(&self) -> Ref<u8> {
        self.code.borrow()
    }
}
impl CastNested_Opcode {
    pub fn body(&self) -> Ref<Option<CastNested_Opcode_Body>> {
        self.body.borrow()
    }
}
impl CastNested_Opcode {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct CastNested_Opcode_Intval {
    pub _root: SharedType<CastNested>,
    pub _parent: SharedType<CastNested_Opcode>,
    pub _self: SharedType<Self>,
    value: RefCell<u8>,
    _io: RefCell<BytesReader>,
}
impl KStruct for CastNested_Opcode_Intval {
    type Root = CastNested;
    type Parent = CastNested_Opcode;

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
impl CastNested_Opcode_Intval {
}
impl CastNested_Opcode_Intval {
    pub fn value(&self) -> Ref<u8> {
        self.value.borrow()
    }
}
impl CastNested_Opcode_Intval {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct CastNested_Opcode_Strval {
    pub _root: SharedType<CastNested>,
    pub _parent: SharedType<CastNested_Opcode>,
    pub _self: SharedType<Self>,
    value: RefCell<String>,
    _io: RefCell<BytesReader>,
}
impl KStruct for CastNested_Opcode_Strval {
    type Root = CastNested;
    type Parent = CastNested_Opcode;

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
impl CastNested_Opcode_Strval {
}
impl CastNested_Opcode_Strval {
    pub fn value(&self) -> Ref<String> {
        self.value.borrow()
    }
}
impl CastNested_Opcode_Strval {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
