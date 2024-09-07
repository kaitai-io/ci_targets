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
pub struct IoLocalVar {
    pub _root: SharedType<IoLocalVar>,
    pub _parent: SharedType<IoLocalVar>,
    pub _self: SharedType<Self>,
    skip: RefCell<Vec<u8>>,
    always_null: RefCell<u8>,
    followup: RefCell<u8>,
    _io: RefCell<BytesReader>,
    mess_up_raw: RefCell<Vec<u8>>,
    f_mess_up: Cell<bool>,
    mess_up: RefCell<Option<IoLocalVar_MessUp>>,
}
#[derive(Debug, Clone)]
pub enum IoLocalVar_MessUp {
    IoLocalVar_Dummy(OptRc<IoLocalVar_Dummy>),
    Bytes(Vec<u8>),
}
impl From<&IoLocalVar_MessUp> for OptRc<IoLocalVar_Dummy> {
    fn from(v: &IoLocalVar_MessUp) -> Self {
        if let IoLocalVar_MessUp::IoLocalVar_Dummy(x) = v {
            return x.clone();
        }
        panic!("expected IoLocalVar_MessUp::IoLocalVar_Dummy, got {:?}", v)
    }
}
impl From<OptRc<IoLocalVar_Dummy>> for IoLocalVar_MessUp {
    fn from(v: OptRc<IoLocalVar_Dummy>) -> Self {
        Self::IoLocalVar_Dummy(v)
    }
}
impl From<&IoLocalVar_MessUp> for Vec<u8> {
    fn from(v: &IoLocalVar_MessUp) -> Self {
        if let IoLocalVar_MessUp::Bytes(x) = v {
            return x.clone();
        }
        panic!("expected IoLocalVar_MessUp::Bytes, got {:?}", v)
    }
}
impl From<Vec<u8>> for IoLocalVar_MessUp {
    fn from(v: Vec<u8>) -> Self {
        Self::Bytes(v)
    }
}
impl KStruct for IoLocalVar {
    type Root = IoLocalVar;
    type Parent = IoLocalVar;

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
        *self_rc.skip.borrow_mut() = _io.read_bytes(20 as usize)?.into();
        if ((Into::<OptRc<IoLocalVar_Dummy>>::into(&*self_rc.mess_up()?.as_ref().unwrap())._io().pos() as i32) < (0 as i32)) {
            *self_rc.always_null.borrow_mut() = _io.read_u1()?.into();
        }
        *self_rc.followup.borrow_mut() = _io.read_u1()?.into();
        Ok(())
    }
}
impl IoLocalVar {
    pub fn mess_up(
        &self
    ) -> KResult<Ref<Option<IoLocalVar_MessUp>>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_mess_up.get() {
            return Ok(self.mess_up.borrow());
        }
        self.f_mess_up.set(true);
        let io = Clone::clone(&*_r._io());
        let _pos = io.pos();
        io.seek(8 as usize)?;
        match 2 {
            1 => {
                *self.mess_up_raw.borrow_mut() = io.read_bytes(2 as usize)?.into();
                let mess_up_raw = self.mess_up_raw.borrow();
                let _t_mess_up_raw_io = BytesReader::from(mess_up_raw.clone());
                let t = Self::read_into::<BytesReader, IoLocalVar_Dummy>(&_t_mess_up_raw_io, Some(self._root.clone()), Some(self._self.clone()))?.into();
                *self.mess_up.borrow_mut() = Some(t);
            }
            2 => {
                *self.mess_up_raw.borrow_mut() = io.read_bytes(2 as usize)?.into();
                let mess_up_raw = self.mess_up_raw.borrow();
                let _t_mess_up_raw_io = BytesReader::from(mess_up_raw.clone());
                let t = Self::read_into::<BytesReader, IoLocalVar_Dummy>(&_t_mess_up_raw_io, Some(self._root.clone()), Some(self._self.clone()))?.into();
                *self.mess_up.borrow_mut() = Some(t);
            }
            _ => {
                *self.mess_up.borrow_mut() = Some(io.read_bytes(2 as usize)?.into());
            }
        }
        io.seek(_pos)?;
        Ok(self.mess_up.borrow())
    }
}
impl IoLocalVar {
    pub fn skip(&self) -> Ref<Vec<u8>> {
        self.skip.borrow()
    }
}
impl IoLocalVar {
    pub fn always_null(&self) -> Ref<u8> {
        self.always_null.borrow()
    }
}
impl IoLocalVar {
    pub fn followup(&self) -> Ref<u8> {
        self.followup.borrow()
    }
}
impl IoLocalVar {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
impl IoLocalVar {
    pub fn mess_up_raw(&self) -> Ref<Vec<u8>> {
        self.mess_up_raw.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct IoLocalVar_Dummy {
    pub _root: SharedType<IoLocalVar>,
    pub _parent: SharedType<IoLocalVar>,
    pub _self: SharedType<Self>,
    _io: RefCell<BytesReader>,
}
impl KStruct for IoLocalVar_Dummy {
    type Root = IoLocalVar;
    type Parent = IoLocalVar;

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
impl IoLocalVar_Dummy {
}
impl IoLocalVar_Dummy {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
