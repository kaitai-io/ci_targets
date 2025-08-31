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
pub struct ProcessRepeatUsertypeDynargRotate {
    pub _root: SharedType<ProcessRepeatUsertypeDynargRotate>,
    pub _parent: SharedType<ProcessRepeatUsertypeDynargRotate>,
    pub _self: SharedType<Self>,
    blocks_rol: RefCell<Vec<OptRc<ProcessRepeatUsertypeDynargRotate_Block>>>,
    blocks_ror: RefCell<Vec<OptRc<ProcessRepeatUsertypeDynargRotate_Block>>>,
    blocks_b: RefCell<OptRc<ProcessRepeatUsertypeDynargRotate_BlocksBWrapper>>,
    _io: RefCell<BytesReader>,
    blocks_rol_raw: RefCell<Vec<Vec<u8>>>,
    blocks_rol_raw_raw: RefCell<Vec<Vec<u8>>>,
    blocks_ror_raw: RefCell<Vec<Vec<u8>>>,
    blocks_ror_raw_raw: RefCell<Vec<Vec<u8>>>,
}
impl KStruct for ProcessRepeatUsertypeDynargRotate {
    type Root = ProcessRepeatUsertypeDynargRotate;
    type Parent = ProcessRepeatUsertypeDynargRotate;

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
        *self_rc.blocks_rol_raw.borrow_mut() = Vec::new();
        *self_rc.blocks_rol_raw_raw.borrow_mut() = Vec::new();
        *self_rc.blocks_rol.borrow_mut() = Vec::new();
        let l_blocks_rol = 2;
        for _i in 0..l_blocks_rol {
            self_rc.blocks_rol_raw_raw.borrow_mut().push(_io.read_bytes(3 as usize)?.into());
            self_rc.blocks_rol_raw.borrow_mut().push(process_rotate_left(&self_rc.blocks_rol_raw_raw.borrow()[self_rc.blocks_rol_raw_raw.borrow().len() - 1], ((_io.pos() as i32) - (((4 as i32) * (_i as i32)) as i32))));
            let blocks_rol_raw = self_rc.blocks_rol_raw.borrow();
            let io_blocks_rol_raw = BytesReader::from(blocks_rol_raw.last().unwrap().clone());
            let t = Self::read_into::<BytesReader, ProcessRepeatUsertypeDynargRotate_Block>(&io_blocks_rol_raw, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
            self_rc.blocks_rol.borrow_mut().push(t);
        }
        *self_rc.blocks_ror_raw.borrow_mut() = Vec::new();
        *self_rc.blocks_ror_raw_raw.borrow_mut() = Vec::new();
        *self_rc.blocks_ror.borrow_mut() = Vec::new();
        let l_blocks_ror = 3;
        for _i in 0..l_blocks_ror {
            self_rc.blocks_ror_raw_raw.borrow_mut().push(_io.read_bytes(3 as usize)?.into());
            self_rc.blocks_ror_raw.borrow_mut().push(process_rotate_left(&self_rc.blocks_ror_raw_raw.borrow()[self_rc.blocks_ror_raw_raw.borrow().len() - 1], 8 - (((((_io.pos() as i32) - (6 as i32)) as i32) - (((4 as i32) * (_i as i32)) as i32)))));
            let blocks_ror_raw = self_rc.blocks_ror_raw.borrow();
            let io_blocks_ror_raw = BytesReader::from(blocks_ror_raw.last().unwrap().clone());
            let t = Self::read_into::<BytesReader, ProcessRepeatUsertypeDynargRotate_Block>(&io_blocks_ror_raw, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
            self_rc.blocks_ror.borrow_mut().push(t);
        }
        let t = Self::read_into::<_, ProcessRepeatUsertypeDynargRotate_BlocksBWrapper>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.blocks_b.borrow_mut() = t;
        Ok(())
    }
}
impl ProcessRepeatUsertypeDynargRotate {
}
impl ProcessRepeatUsertypeDynargRotate {
    pub fn blocks_rol(&self) -> Ref<'_, Vec<OptRc<ProcessRepeatUsertypeDynargRotate_Block>>> {
        self.blocks_rol.borrow()
    }
}
impl ProcessRepeatUsertypeDynargRotate {
    pub fn blocks_ror(&self) -> Ref<'_, Vec<OptRc<ProcessRepeatUsertypeDynargRotate_Block>>> {
        self.blocks_ror.borrow()
    }
}
impl ProcessRepeatUsertypeDynargRotate {
    pub fn blocks_b(&self) -> Ref<'_, OptRc<ProcessRepeatUsertypeDynargRotate_BlocksBWrapper>> {
        self.blocks_b.borrow()
    }
}
impl ProcessRepeatUsertypeDynargRotate {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
impl ProcessRepeatUsertypeDynargRotate {
    pub fn blocks_rol_raw(&self) -> Ref<'_, Vec<Vec<u8>>> {
        self.blocks_rol_raw.borrow()
    }
}
impl ProcessRepeatUsertypeDynargRotate {
    pub fn blocks_rol_raw_raw(&self) -> Ref<'_, Vec<Vec<u8>>> {
        self.blocks_rol_raw_raw.borrow()
    }
}
impl ProcessRepeatUsertypeDynargRotate {
    pub fn blocks_ror_raw(&self) -> Ref<'_, Vec<Vec<u8>>> {
        self.blocks_ror_raw.borrow()
    }
}
impl ProcessRepeatUsertypeDynargRotate {
    pub fn blocks_ror_raw_raw(&self) -> Ref<'_, Vec<Vec<u8>>> {
        self.blocks_ror_raw_raw.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct ProcessRepeatUsertypeDynargRotate_Block {
    pub _root: SharedType<ProcessRepeatUsertypeDynargRotate>,
    pub _parent: SharedType<ProcessRepeatUsertypeDynargRotate>,
    pub _self: SharedType<Self>,
    a: RefCell<u16>,
    _io: RefCell<BytesReader>,
}
impl KStruct for ProcessRepeatUsertypeDynargRotate_Block {
    type Root = ProcessRepeatUsertypeDynargRotate;
    type Parent = ProcessRepeatUsertypeDynargRotate;

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
        *self_rc.a.borrow_mut() = _io.read_u2le()?.into();
        Ok(())
    }
}
impl ProcessRepeatUsertypeDynargRotate_Block {
}
impl ProcessRepeatUsertypeDynargRotate_Block {
    pub fn a(&self) -> Ref<'_, u16> {
        self.a.borrow()
    }
}
impl ProcessRepeatUsertypeDynargRotate_Block {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct ProcessRepeatUsertypeDynargRotate_BlocksBWrapper {
    pub _root: SharedType<ProcessRepeatUsertypeDynargRotate>,
    pub _parent: SharedType<ProcessRepeatUsertypeDynargRotate>,
    pub _self: SharedType<Self>,
    dummy: RefCell<u8>,
    _io: RefCell<BytesReader>,
    f_blocks_rol_0_b: Cell<bool>,
    blocks_rol_0_b: RefCell<u8>,
    f_blocks_rol_1_b: Cell<bool>,
    blocks_rol_1_b: RefCell<u8>,
    f_blocks_ror_0_b: Cell<bool>,
    blocks_ror_0_b: RefCell<u8>,
    f_blocks_ror_1_b: Cell<bool>,
    blocks_ror_1_b: RefCell<u8>,
    f_blocks_ror_2_b: Cell<bool>,
    blocks_ror_2_b: RefCell<u8>,
}
impl KStruct for ProcessRepeatUsertypeDynargRotate_BlocksBWrapper {
    type Root = ProcessRepeatUsertypeDynargRotate;
    type Parent = ProcessRepeatUsertypeDynargRotate;

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
        *self_rc.dummy.borrow_mut() = _io.read_u1()?.into();
        Ok(())
    }
}
impl ProcessRepeatUsertypeDynargRotate_BlocksBWrapper {
    pub fn blocks_rol_0_b(
        &self
    ) -> KResult<Ref<'_, u8>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_blocks_rol_0_b.get() {
            return Ok(self.blocks_rol_0_b.borrow());
        }
        self.f_blocks_rol_0_b.set(true);
        let io = Clone::clone(&*_prc.as_ref().unwrap().blocks_rol()[0 as usize]._io());
        let _pos = io.pos();
        io.seek(2 as usize)?;
        *self.blocks_rol_0_b.borrow_mut() = io.read_u1()?.into();
        io.seek(_pos)?;
        Ok(self.blocks_rol_0_b.borrow())
    }
    pub fn blocks_rol_1_b(
        &self
    ) -> KResult<Ref<'_, u8>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_blocks_rol_1_b.get() {
            return Ok(self.blocks_rol_1_b.borrow());
        }
        self.f_blocks_rol_1_b.set(true);
        let io = Clone::clone(&*_prc.as_ref().unwrap().blocks_rol()[1 as usize]._io());
        let _pos = io.pos();
        io.seek(2 as usize)?;
        *self.blocks_rol_1_b.borrow_mut() = io.read_u1()?.into();
        io.seek(_pos)?;
        Ok(self.blocks_rol_1_b.borrow())
    }
    pub fn blocks_ror_0_b(
        &self
    ) -> KResult<Ref<'_, u8>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_blocks_ror_0_b.get() {
            return Ok(self.blocks_ror_0_b.borrow());
        }
        self.f_blocks_ror_0_b.set(true);
        let io = Clone::clone(&*_prc.as_ref().unwrap().blocks_ror()[0 as usize]._io());
        let _pos = io.pos();
        io.seek(2 as usize)?;
        *self.blocks_ror_0_b.borrow_mut() = io.read_u1()?.into();
        io.seek(_pos)?;
        Ok(self.blocks_ror_0_b.borrow())
    }
    pub fn blocks_ror_1_b(
        &self
    ) -> KResult<Ref<'_, u8>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_blocks_ror_1_b.get() {
            return Ok(self.blocks_ror_1_b.borrow());
        }
        self.f_blocks_ror_1_b.set(true);
        let io = Clone::clone(&*_prc.as_ref().unwrap().blocks_ror()[1 as usize]._io());
        let _pos = io.pos();
        io.seek(2 as usize)?;
        *self.blocks_ror_1_b.borrow_mut() = io.read_u1()?.into();
        io.seek(_pos)?;
        Ok(self.blocks_ror_1_b.borrow())
    }
    pub fn blocks_ror_2_b(
        &self
    ) -> KResult<Ref<'_, u8>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_blocks_ror_2_b.get() {
            return Ok(self.blocks_ror_2_b.borrow());
        }
        self.f_blocks_ror_2_b.set(true);
        let io = Clone::clone(&*_prc.as_ref().unwrap().blocks_ror()[2 as usize]._io());
        let _pos = io.pos();
        io.seek(2 as usize)?;
        *self.blocks_ror_2_b.borrow_mut() = io.read_u1()?.into();
        io.seek(_pos)?;
        Ok(self.blocks_ror_2_b.borrow())
    }
}
impl ProcessRepeatUsertypeDynargRotate_BlocksBWrapper {
    pub fn dummy(&self) -> Ref<'_, u8> {
        self.dummy.borrow()
    }
}
impl ProcessRepeatUsertypeDynargRotate_BlocksBWrapper {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
