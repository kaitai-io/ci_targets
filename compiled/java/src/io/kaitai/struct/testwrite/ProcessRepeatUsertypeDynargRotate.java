// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import io.kaitai.struct.ConsistencyError;
import java.util.Objects;
import java.util.List;

public class ProcessRepeatUsertypeDynargRotate extends KaitaiStruct.ReadWrite {
    public static ProcessRepeatUsertypeDynargRotate fromFile(String fileName) throws IOException {
        return new ProcessRepeatUsertypeDynargRotate(new ByteBufferKaitaiStream(fileName));
    }
    public ProcessRepeatUsertypeDynargRotate() {
        this(null, null, null);
    }

    public ProcessRepeatUsertypeDynargRotate(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ProcessRepeatUsertypeDynargRotate(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ProcessRepeatUsertypeDynargRotate(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ProcessRepeatUsertypeDynargRotate _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this._raw_blocksRol = new ArrayList<byte[]>();
        this._raw__raw_blocksRol = new ArrayList<byte[]>();
        this.blocksRol = new ArrayList<Block>();
        for (int i = 0; i < 2; i++) {
            this._raw__raw_blocksRol.add(this._io.readBytes(3));
            this._raw_blocksRol.add(KaitaiStream.processRotateLeft(this._raw__raw_blocksRol.get(i), _io().pos() - 4 * i, 1));
            KaitaiStream _io__raw_blocksRol = new ByteBufferKaitaiStream(this._raw_blocksRol.get(i));
            Block _t_blocksRol = new Block(_io__raw_blocksRol, this, _root);
            try {
                _t_blocksRol._read();
            } finally {
                this.blocksRol.add(_t_blocksRol);
            }
        }
        this._raw_blocksRor = new ArrayList<byte[]>();
        this._raw__raw_blocksRor = new ArrayList<byte[]>();
        this.blocksRor = new ArrayList<Block>();
        for (int i = 0; i < 3; i++) {
            this._raw__raw_blocksRor.add(this._io.readBytes(3));
            this._raw_blocksRor.add(KaitaiStream.processRotateLeft(this._raw__raw_blocksRor.get(i), 8 - ((_io().pos() - 6) - 4 * i), 1));
            KaitaiStream _io__raw_blocksRor = new ByteBufferKaitaiStream(this._raw_blocksRor.get(i));
            Block _t_blocksRor = new Block(_io__raw_blocksRor, this, _root);
            try {
                _t_blocksRor._read();
            } finally {
                this.blocksRor.add(_t_blocksRor);
            }
        }
        this.blocksB = new BlocksBWrapper(this._io, this, _root);
        this.blocksB._read();
        _dirty = false;
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.blocksRol.size(); i++) {
            this.blocksRol.get(((Number) (i)).intValue())._fetchInstances();
        }
        for (int i = 0; i < this.blocksRor.size(); i++) {
            this.blocksRor.get(((Number) (i)).intValue())._fetchInstances();
        }
        this.blocksB._fetchInstances();
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._raw_blocksRol = new ArrayList<byte[]>();
        this._raw__raw_blocksRol = new ArrayList<byte[]>();
        for (int i = 0; i < this.blocksRol.size(); i++) {
            final KaitaiStream _io__raw_blocksRol = new ByteBufferKaitaiStream(3);
            this._io.addChildStream(_io__raw_blocksRol);
            {
                long _pos2 = this._io.pos();
                this._io.seek(this._io.pos() + (3));
                final int _processRotateArg = _io().pos() - 4 * i;
                final ProcessRepeatUsertypeDynargRotate _this = this;
                final int _i = i;
                _io__raw_blocksRol.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                    @Override
                    protected void write(KaitaiStream parent) {
                        _this._raw_blocksRol.add(_io__raw_blocksRol.toByteArray());
                        _this._raw__raw_blocksRol.add(KaitaiStream.processRotateLeft(_this._raw_blocksRol.get(((Number) (_i)).intValue()), 8 - (_processRotateArg), 1));
                        if (_this._raw__raw_blocksRol.get(((Number) (_i)).intValue()).length != 3)
                            throw new ConsistencyError("raw(blocks_rol)", _this._raw__raw_blocksRol.get(((Number) (_i)).intValue()).length, 3);
                        parent.writeBytes(_this._raw__raw_blocksRol.get(((Number) (_i)).intValue()));
                    }
                });
            }
            this.blocksRol.get(((Number) (i)).intValue())._write_Seq(_io__raw_blocksRol);
        }
        this._raw_blocksRor = new ArrayList<byte[]>();
        this._raw__raw_blocksRor = new ArrayList<byte[]>();
        for (int i = 0; i < this.blocksRor.size(); i++) {
            final KaitaiStream _io__raw_blocksRor = new ByteBufferKaitaiStream(3);
            this._io.addChildStream(_io__raw_blocksRor);
            {
                long _pos2 = this._io.pos();
                this._io.seek(this._io.pos() + (3));
                final int _processRotateArg = (_io().pos() - 6) - 4 * i;
                final ProcessRepeatUsertypeDynargRotate _this = this;
                final int _i = i;
                _io__raw_blocksRor.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                    @Override
                    protected void write(KaitaiStream parent) {
                        _this._raw_blocksRor.add(_io__raw_blocksRor.toByteArray());
                        _this._raw__raw_blocksRor.add(KaitaiStream.processRotateLeft(_this._raw_blocksRor.get(((Number) (_i)).intValue()), _processRotateArg, 1));
                        if (_this._raw__raw_blocksRor.get(((Number) (_i)).intValue()).length != 3)
                            throw new ConsistencyError("raw(blocks_ror)", _this._raw__raw_blocksRor.get(((Number) (_i)).intValue()).length, 3);
                        parent.writeBytes(_this._raw__raw_blocksRor.get(((Number) (_i)).intValue()));
                    }
                });
            }
            this.blocksRor.get(((Number) (i)).intValue())._write_Seq(_io__raw_blocksRor);
        }
        this.blocksB._write_Seq(this._io);
    }

    public void _check() {
        if (this.blocksRol.size() != 2)
            throw new ConsistencyError("blocks_rol", this.blocksRol.size(), 2);
        for (int i = 0; i < this.blocksRol.size(); i++) {
            if (!Objects.equals(this.blocksRol.get(((Number) (i)).intValue())._root(), _root()))
                throw new ConsistencyError("blocks_rol", this.blocksRol.get(((Number) (i)).intValue())._root(), _root());
            if (!Objects.equals(this.blocksRol.get(((Number) (i)).intValue())._parent(), this))
                throw new ConsistencyError("blocks_rol", this.blocksRol.get(((Number) (i)).intValue())._parent(), this);
        }
        if (this.blocksRor.size() != 3)
            throw new ConsistencyError("blocks_ror", this.blocksRor.size(), 3);
        for (int i = 0; i < this.blocksRor.size(); i++) {
            if (!Objects.equals(this.blocksRor.get(((Number) (i)).intValue())._root(), _root()))
                throw new ConsistencyError("blocks_ror", this.blocksRor.get(((Number) (i)).intValue())._root(), _root());
            if (!Objects.equals(this.blocksRor.get(((Number) (i)).intValue())._parent(), this))
                throw new ConsistencyError("blocks_ror", this.blocksRor.get(((Number) (i)).intValue())._parent(), this);
        }
        if (!Objects.equals(this.blocksB._root(), _root()))
            throw new ConsistencyError("blocks_b", this.blocksB._root(), _root());
        if (!Objects.equals(this.blocksB._parent(), this))
            throw new ConsistencyError("blocks_b", this.blocksB._parent(), this);
        _dirty = false;
    }
    public static class Block extends KaitaiStruct.ReadWrite {
        public static Block fromFile(String fileName) throws IOException {
            return new Block(new ByteBufferKaitaiStream(fileName));
        }
        public Block() {
            this(null, null, null);
        }

        public Block(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Block(KaitaiStream _io, ProcessRepeatUsertypeDynargRotate _parent) {
            this(_io, _parent, null);
        }

        public Block(KaitaiStream _io, ProcessRepeatUsertypeDynargRotate _parent, ProcessRepeatUsertypeDynargRotate _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.a = this._io.readU2le();
            _dirty = false;
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            _assertNotDirty();
            this._io.writeU2le(this.a);
        }

        public void _check() {
            _dirty = false;
        }
        private int a;
        private ProcessRepeatUsertypeDynargRotate _root;
        private ProcessRepeatUsertypeDynargRotate _parent;
        public int a() { return a; }
        public void setA(int _v) { _dirty = true; a = _v; }
        public ProcessRepeatUsertypeDynargRotate _root() { return _root; }
        public void set_root(ProcessRepeatUsertypeDynargRotate _v) { _dirty = true; _root = _v; }
        public ProcessRepeatUsertypeDynargRotate _parent() { return _parent; }
        public void set_parent(ProcessRepeatUsertypeDynargRotate _v) { _dirty = true; _parent = _v; }
    }
    public static class BlocksBWrapper extends KaitaiStruct.ReadWrite {
        public static BlocksBWrapper fromFile(String fileName) throws IOException {
            return new BlocksBWrapper(new ByteBufferKaitaiStream(fileName));
        }
        public BlocksBWrapper() {
            this(null, null, null);
        }

        public BlocksBWrapper(KaitaiStream _io) {
            this(_io, null, null);
        }

        public BlocksBWrapper(KaitaiStream _io, ProcessRepeatUsertypeDynargRotate _parent) {
            this(_io, _parent, null);
        }

        public BlocksBWrapper(KaitaiStream _io, ProcessRepeatUsertypeDynargRotate _parent, ProcessRepeatUsertypeDynargRotate _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.dummy = this._io.readU1();
            _dirty = false;
        }

        public void _fetchInstances() {
            blocksRol0B();
            if (this.blocksRol0B != null) {
            }
            blocksRol1B();
            if (this.blocksRol1B != null) {
            }
            blocksRor0B();
            if (this.blocksRor0B != null) {
            }
            blocksRor1B();
            if (this.blocksRor1B != null) {
            }
            blocksRor2B();
            if (this.blocksRor2B != null) {
            }
        }

        public void _write_Seq() {
            _assertNotDirty();
            _shouldWriteBlocksRol0B = _enabledBlocksRol0B;
            _shouldWriteBlocksRol1B = _enabledBlocksRol1B;
            _shouldWriteBlocksRor0B = _enabledBlocksRor0B;
            _shouldWriteBlocksRor1B = _enabledBlocksRor1B;
            _shouldWriteBlocksRor2B = _enabledBlocksRor2B;
            this._io.writeU1(this.dummy);
        }

        public void _check() {
            if (_enabledBlocksRol0B) {
            }
            if (_enabledBlocksRol1B) {
            }
            if (_enabledBlocksRor0B) {
            }
            if (_enabledBlocksRor1B) {
            }
            if (_enabledBlocksRor2B) {
            }
            _dirty = false;
        }
        private Integer blocksRol0B;
        private boolean _shouldWriteBlocksRol0B = false;
        private boolean _enabledBlocksRol0B = true;
        public Integer blocksRol0B() {
            if (_shouldWriteBlocksRol0B)
                _writeBlocksRol0B();
            if (this.blocksRol0B != null)
                return this.blocksRol0B;
            if (!_enabledBlocksRol0B)
                return null;
            KaitaiStream io = _parent().blocksRol().get(((int) 0))._io();
            long _pos = io.pos();
            io.seek(2);
            this.blocksRol0B = io.readU1();
            io.seek(_pos);
            return this.blocksRol0B;
        }
        public void setBlocksRol0B(int _v) { _dirty = true; blocksRol0B = _v; }
        public void setBlocksRol0B_Enabled(boolean _v) { _dirty = true; _enabledBlocksRol0B = _v; }

        private void _writeBlocksRol0B() {
            _shouldWriteBlocksRol0B = false;
            KaitaiStream io = _parent().blocksRol().get(((int) 0))._io();
            long _pos = io.pos();
            io.seek(2);
            io.writeU1(this.blocksRol0B);
            io.seek(_pos);
        }
        private Integer blocksRol1B;
        private boolean _shouldWriteBlocksRol1B = false;
        private boolean _enabledBlocksRol1B = true;
        public Integer blocksRol1B() {
            if (_shouldWriteBlocksRol1B)
                _writeBlocksRol1B();
            if (this.blocksRol1B != null)
                return this.blocksRol1B;
            if (!_enabledBlocksRol1B)
                return null;
            KaitaiStream io = _parent().blocksRol().get(((int) 1))._io();
            long _pos = io.pos();
            io.seek(2);
            this.blocksRol1B = io.readU1();
            io.seek(_pos);
            return this.blocksRol1B;
        }
        public void setBlocksRol1B(int _v) { _dirty = true; blocksRol1B = _v; }
        public void setBlocksRol1B_Enabled(boolean _v) { _dirty = true; _enabledBlocksRol1B = _v; }

        private void _writeBlocksRol1B() {
            _shouldWriteBlocksRol1B = false;
            KaitaiStream io = _parent().blocksRol().get(((int) 1))._io();
            long _pos = io.pos();
            io.seek(2);
            io.writeU1(this.blocksRol1B);
            io.seek(_pos);
        }
        private Integer blocksRor0B;
        private boolean _shouldWriteBlocksRor0B = false;
        private boolean _enabledBlocksRor0B = true;
        public Integer blocksRor0B() {
            if (_shouldWriteBlocksRor0B)
                _writeBlocksRor0B();
            if (this.blocksRor0B != null)
                return this.blocksRor0B;
            if (!_enabledBlocksRor0B)
                return null;
            KaitaiStream io = _parent().blocksRor().get(((int) 0))._io();
            long _pos = io.pos();
            io.seek(2);
            this.blocksRor0B = io.readU1();
            io.seek(_pos);
            return this.blocksRor0B;
        }
        public void setBlocksRor0B(int _v) { _dirty = true; blocksRor0B = _v; }
        public void setBlocksRor0B_Enabled(boolean _v) { _dirty = true; _enabledBlocksRor0B = _v; }

        private void _writeBlocksRor0B() {
            _shouldWriteBlocksRor0B = false;
            KaitaiStream io = _parent().blocksRor().get(((int) 0))._io();
            long _pos = io.pos();
            io.seek(2);
            io.writeU1(this.blocksRor0B);
            io.seek(_pos);
        }
        private Integer blocksRor1B;
        private boolean _shouldWriteBlocksRor1B = false;
        private boolean _enabledBlocksRor1B = true;
        public Integer blocksRor1B() {
            if (_shouldWriteBlocksRor1B)
                _writeBlocksRor1B();
            if (this.blocksRor1B != null)
                return this.blocksRor1B;
            if (!_enabledBlocksRor1B)
                return null;
            KaitaiStream io = _parent().blocksRor().get(((int) 1))._io();
            long _pos = io.pos();
            io.seek(2);
            this.blocksRor1B = io.readU1();
            io.seek(_pos);
            return this.blocksRor1B;
        }
        public void setBlocksRor1B(int _v) { _dirty = true; blocksRor1B = _v; }
        public void setBlocksRor1B_Enabled(boolean _v) { _dirty = true; _enabledBlocksRor1B = _v; }

        private void _writeBlocksRor1B() {
            _shouldWriteBlocksRor1B = false;
            KaitaiStream io = _parent().blocksRor().get(((int) 1))._io();
            long _pos = io.pos();
            io.seek(2);
            io.writeU1(this.blocksRor1B);
            io.seek(_pos);
        }
        private Integer blocksRor2B;
        private boolean _shouldWriteBlocksRor2B = false;
        private boolean _enabledBlocksRor2B = true;
        public Integer blocksRor2B() {
            if (_shouldWriteBlocksRor2B)
                _writeBlocksRor2B();
            if (this.blocksRor2B != null)
                return this.blocksRor2B;
            if (!_enabledBlocksRor2B)
                return null;
            KaitaiStream io = _parent().blocksRor().get(((int) 2))._io();
            long _pos = io.pos();
            io.seek(2);
            this.blocksRor2B = io.readU1();
            io.seek(_pos);
            return this.blocksRor2B;
        }
        public void setBlocksRor2B(int _v) { _dirty = true; blocksRor2B = _v; }
        public void setBlocksRor2B_Enabled(boolean _v) { _dirty = true; _enabledBlocksRor2B = _v; }

        private void _writeBlocksRor2B() {
            _shouldWriteBlocksRor2B = false;
            KaitaiStream io = _parent().blocksRor().get(((int) 2))._io();
            long _pos = io.pos();
            io.seek(2);
            io.writeU1(this.blocksRor2B);
            io.seek(_pos);
        }
        private int dummy;
        private ProcessRepeatUsertypeDynargRotate _root;
        private ProcessRepeatUsertypeDynargRotate _parent;
        public int dummy() { return dummy; }
        public void setDummy(int _v) { _dirty = true; dummy = _v; }
        public ProcessRepeatUsertypeDynargRotate _root() { return _root; }
        public void set_root(ProcessRepeatUsertypeDynargRotate _v) { _dirty = true; _root = _v; }
        public ProcessRepeatUsertypeDynargRotate _parent() { return _parent; }
        public void set_parent(ProcessRepeatUsertypeDynargRotate _v) { _dirty = true; _parent = _v; }
    }
    private List<Block> blocksRol;
    private List<Block> blocksRor;
    private BlocksBWrapper blocksB;
    private ProcessRepeatUsertypeDynargRotate _root;
    private KaitaiStruct.ReadWrite _parent;
    private List<byte[]> _raw_blocksRol;
    private List<byte[]> _raw__raw_blocksRol;
    private List<byte[]> _raw_blocksRor;
    private List<byte[]> _raw__raw_blocksRor;
    public List<Block> blocksRol() { return blocksRol; }
    public void setBlocksRol(List<Block> _v) { _dirty = true; blocksRol = _v; }
    public List<Block> blocksRor() { return blocksRor; }
    public void setBlocksRor(List<Block> _v) { _dirty = true; blocksRor = _v; }
    public BlocksBWrapper blocksB() { return blocksB; }
    public void setBlocksB(BlocksBWrapper _v) { _dirty = true; blocksB = _v; }
    public ProcessRepeatUsertypeDynargRotate _root() { return _root; }
    public void set_root(ProcessRepeatUsertypeDynargRotate _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    public List<byte[]> _raw_blocksRol() { return _raw_blocksRol; }
    public void set_raw_BlocksRol(List<byte[]> _v) { _dirty = true; _raw_blocksRol = _v; }
    public List<byte[]> _raw__raw_blocksRol() { return _raw__raw_blocksRol; }
    public void set_raw__raw_BlocksRol(List<byte[]> _v) { _dirty = true; _raw__raw_blocksRol = _v; }
    public List<byte[]> _raw_blocksRor() { return _raw_blocksRor; }
    public void set_raw_BlocksRor(List<byte[]> _v) { _dirty = true; _raw_blocksRor = _v; }
    public List<byte[]> _raw__raw_blocksRor() { return _raw__raw_blocksRor; }
    public void set_raw__raw_BlocksRor(List<byte[]> _v) { _dirty = true; _raw__raw_blocksRor = _v; }
}
