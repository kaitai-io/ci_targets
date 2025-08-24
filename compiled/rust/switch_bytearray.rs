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
pub struct SwitchBytearray {
    pub _root: SharedType<SwitchBytearray>,
    pub _parent: SharedType<SwitchBytearray>,
    pub _self: SharedType<Self>,
    opcodes: RefCell<Vec<OptRc<SwitchBytearray_Opcode>>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for SwitchBytearray {
    type Root = SwitchBytearray;
    type Parent = SwitchBytearray;

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
                let t = Self::read_into::<_, SwitchBytearray_Opcode>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                self_rc.opcodes.borrow_mut().push(t);
                _i += 1;
            }
        }
        Ok(())
    }
}
impl SwitchBytearray {
}
impl SwitchBytearray {
    pub fn opcodes(&self) -> Ref<'_, Vec<OptRc<SwitchBytearray_Opcode>>> {
        self.opcodes.borrow()
    }
}
impl SwitchBytearray {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct SwitchBytearray_Opcode {
    pub _root: SharedType<SwitchBytearray>,
    pub _parent: SharedType<SwitchBytearray>,
    pub _self: SharedType<Self>,
    code: RefCell<Vec<u8>>,
    body: RefCell<Option<SwitchBytearray_Opcode_Body>>,
    _io: RefCell<BytesReader>,
}
#[derive(Debug, Clone)]
pub enum SwitchBytearray_Opcode_Body {
    SwitchBytearray_Opcode_Intval(OptRc<SwitchBytearray_Opcode_Intval>),
    SwitchBytearray_Opcode_Strval(OptRc<SwitchBytearray_Opcode_Strval>),
}
impl From<&SwitchBytearray_Opcode_Body> for OptRc<SwitchBytearray_Opcode_Intval> {
    fn from(v: &SwitchBytearray_Opcode_Body) -> Self {
        if let SwitchBytearray_Opcode_Body::SwitchBytearray_Opcode_Intval(x) = v {
            return x.clone();
        }
        panic!("expected SwitchBytearray_Opcode_Body::SwitchBytearray_Opcode_Intval, got {:?}", v)
    }
}
impl From<OptRc<SwitchBytearray_Opcode_Intval>> for SwitchBytearray_Opcode_Body {
    fn from(v: OptRc<SwitchBytearray_Opcode_Intval>) -> Self {
        Self::SwitchBytearray_Opcode_Intval(v)
    }
}
impl From<&SwitchBytearray_Opcode_Body> for OptRc<SwitchBytearray_Opcode_Strval> {
    fn from(v: &SwitchBytearray_Opcode_Body) -> Self {
        if let SwitchBytearray_Opcode_Body::SwitchBytearray_Opcode_Strval(x) = v {
            return x.clone();
        }
        panic!("expected SwitchBytearray_Opcode_Body::SwitchBytearray_Opcode_Strval, got {:?}", v)
    }
}
impl From<OptRc<SwitchBytearray_Opcode_Strval>> for SwitchBytearray_Opcode_Body {
    fn from(v: OptRc<SwitchBytearray_Opcode_Strval>) -> Self {
        Self::SwitchBytearray_Opcode_Strval(v)
    }
}
impl KStruct for SwitchBytearray_Opcode {
    type Root = SwitchBytearray;
    type Parent = SwitchBytearray;

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
        *self_rc.code.borrow_mut() = _io.read_bytes(1 as usize)?.into();
        {
            let on = self_rc.code();
            if *on == vec![0x49u8] {
                let t = Self::read_into::<_, SwitchBytearray_Opcode_Intval>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                *self_rc.body.borrow_mut() = Some(t);
            }
            else if *on == vec![0x53u8] {
                let t = Self::read_into::<_, SwitchBytearray_Opcode_Strval>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                *self_rc.body.borrow_mut() = Some(t);
            }
        }
        Ok(())
    }
}
impl SwitchBytearray_Opcode {
}
impl SwitchBytearray_Opcode {
    pub fn code(&self) -> Ref<'_, Vec<u8>> {
        self.code.borrow()
    }
}
impl SwitchBytearray_Opcode {
    pub fn body(&self) -> Ref<'_, Option<SwitchBytearray_Opcode_Body>> {
        self.body.borrow()
    }
}
impl SwitchBytearray_Opcode {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct SwitchBytearray_Opcode_Intval {
    pub _root: SharedType<SwitchBytearray>,
    pub _parent: SharedType<SwitchBytearray_Opcode>,
    pub _self: SharedType<Self>,
    value: RefCell<u8>,
    _io: RefCell<BytesReader>,
}
impl KStruct for SwitchBytearray_Opcode_Intval {
    type Root = SwitchBytearray;
    type Parent = SwitchBytearray_Opcode;

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
impl SwitchBytearray_Opcode_Intval {
}
impl SwitchBytearray_Opcode_Intval {
    pub fn value(&self) -> Ref<'_, u8> {
        self.value.borrow()
    }
}
impl SwitchBytearray_Opcode_Intval {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct SwitchBytearray_Opcode_Strval {
    pub _root: SharedType<SwitchBytearray>,
    pub _parent: SharedType<SwitchBytearray_Opcode>,
    pub _self: SharedType<Self>,
    value: RefCell<String>,
    _io: RefCell<BytesReader>,
}
impl KStruct for SwitchBytearray_Opcode_Strval {
    type Root = SwitchBytearray;
    type Parent = SwitchBytearray_Opcode;

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
impl SwitchBytearray_Opcode_Strval {
}
impl SwitchBytearray_Opcode_Strval {
    pub fn value(&self) -> Ref<'_, String> {
        self.value.borrow()
    }
}
impl SwitchBytearray_Opcode_Strval {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
