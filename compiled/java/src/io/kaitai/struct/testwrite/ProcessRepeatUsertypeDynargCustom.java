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

public class ProcessRepeatUsertypeDynargCustom extends KaitaiStruct.ReadWrite {
    public static ProcessRepeatUsertypeDynargCustom fromFile(String fileName) throws IOException {
        return new ProcessRepeatUsertypeDynargCustom(new ByteBufferKaitaiStream(fileName));
    }
    public ProcessRepeatUsertypeDynargCustom() {
        this(null, null, null);
    }

    public ProcessRepeatUsertypeDynargCustom(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ProcessRepeatUsertypeDynargCustom(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ProcessRepeatUsertypeDynargCustom(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ProcessRepeatUsertypeDynargCustom _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this._raw_blocks = new ArrayList<byte[]>();
        this.blocks_InnerSize = new ArrayList<Integer>();
        this._raw__raw_blocks = new ArrayList<byte[]>();
        this.blocks = new ArrayList<Block>();
        for (int i = 0; i < 2; i++) {
            this._raw__raw_blocks.add(this._io.readBytes(5));
            MyCustomFx _process__raw__raw_blocks = new MyCustomFx(_io().pos() + 13 * i, KaitaiStream.mod(_io().pos(), 2) == 0, (i == 1 ? new byte[] { 32, 48 } : new byte[] { 64 }));
            this._raw_blocks.add(_process__raw__raw_blocks.decode(this._raw__raw_blocks.get(i)));
            this.blocks_InnerSize.add(this._raw_blocks.get(((Number) (i)).intValue()).length);
            KaitaiStream _io__raw_blocks = new ByteBufferKaitaiStream(this._raw_blocks.get(i));
            Block _t_blocks = new Block(_io__raw_blocks, this, _root);
            try {
                _t_blocks._read();
            } finally {
                this.blocks.add(_t_blocks);
            }
        }
        this.blocksB = new BlocksBWrapper(this._io, this, _root);
        this.blocksB._read();
        _dirty = false;
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.blocks.size(); i++) {
            this.blocks.get(((Number) (i)).intValue())._fetchInstances();
        }
        this.blocksB._fetchInstances();
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._raw_blocks = new ArrayList<byte[]>();
        this._raw__raw_blocks = new ArrayList<byte[]>();
        for (int i = 0; i < this.blocks.size(); i++) {
            final KaitaiStream _io__raw_blocks = new ByteBufferKaitaiStream(this.blocks_InnerSize.get(((Number) (i)).intValue()));
            this._io.addChildStream(_io__raw_blocks);
            {
                long _pos2 = this._io.pos();
                this._io.seek(this._io.pos() + (5));
                final MyCustomFx _process__raw_blocks = new MyCustomFx(_io().pos() + 13 * i, KaitaiStream.mod(_io().pos(), 2) == 0, (i == 1 ? new byte[] { 32, 48 } : new byte[] { 64 }));
                final ProcessRepeatUsertypeDynargCustom _this = this;
                final int _i = i;
                _io__raw_blocks.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                    @Override
                    protected void write(KaitaiStream parent) {
                        _this._raw_blocks.add(_io__raw_blocks.toByteArray());
                        _this._raw__raw_blocks.add(_process__raw_blocks.encode(_this._raw_blocks.get(((Number) (_i)).intValue())));
                        if (_this._raw__raw_blocks.get(((Number) (_i)).intValue()).length != 5)
                            throw new ConsistencyError("raw(blocks)", 5, _this._raw__raw_blocks.get(((Number) (_i)).intValue()).length);
                        parent.writeBytes(_this._raw__raw_blocks.get(((Number) (_i)).intValue()));
                    }
                });
            }
            this.blocks.get(((Number) (i)).intValue())._write_Seq(_io__raw_blocks);
        }
        this.blocksB._write_Seq(this._io);
    }

    public void _check() {
        if (this.blocks.size() != 2)
            throw new ConsistencyError("blocks", 2, this.blocks.size());
        for (int i = 0; i < this.blocks.size(); i++) {
            if (!Objects.equals(this.blocks.get(((Number) (i)).intValue())._root(), _root()))
                throw new ConsistencyError("blocks", _root(), this.blocks.get(((Number) (i)).intValue())._root());
            if (!Objects.equals(this.blocks.get(((Number) (i)).intValue())._parent(), this))
                throw new ConsistencyError("blocks", this, this.blocks.get(((Number) (i)).intValue())._parent());
        }
        if (!Objects.equals(this.blocksB._root(), _root()))
            throw new ConsistencyError("blocks_b", _root(), this.blocksB._root());
        if (!Objects.equals(this.blocksB._parent(), this))
            throw new ConsistencyError("blocks_b", this, this.blocksB._parent());
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

        public Block(KaitaiStream _io, ProcessRepeatUsertypeDynargCustom _parent) {
            this(_io, _parent, null);
        }

        public Block(KaitaiStream _io, ProcessRepeatUsertypeDynargCustom _parent, ProcessRepeatUsertypeDynargCustom _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.a = this._io.readU4le();
            _dirty = false;
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            _assertNotDirty();
            this._io.writeU4le(this.a);
        }

        public void _check() {
            _dirty = false;
        }
        public long a() { return a; }
        public void setA(long _v) { _dirty = true; a = _v; }
        public ProcessRepeatUsertypeDynargCustom _root() { return _root; }
        public void set_root(ProcessRepeatUsertypeDynargCustom _v) { _dirty = true; _root = _v; }
        public ProcessRepeatUsertypeDynargCustom _parent() { return _parent; }
        public void set_parent(ProcessRepeatUsertypeDynargCustom _v) { _dirty = true; _parent = _v; }
        private long a;
        private ProcessRepeatUsertypeDynargCustom _root;
        private ProcessRepeatUsertypeDynargCustom _parent;
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

        public BlocksBWrapper(KaitaiStream _io, ProcessRepeatUsertypeDynargCustom _parent) {
            this(_io, _parent, null);
        }

        public BlocksBWrapper(KaitaiStream _io, ProcessRepeatUsertypeDynargCustom _parent, ProcessRepeatUsertypeDynargCustom _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.dummy = this._io.readU1();
            _dirty = false;
        }

        public void _fetchInstances() {
            blocks0B();
            if (this.blocks0B != null) {
            }
            blocks1B();
            if (this.blocks1B != null) {
            }
        }

        public void _write_Seq() {
            _assertNotDirty();
            _shouldWriteBlocks0B = _enabledBlocks0B;
            _shouldWriteBlocks1B = _enabledBlocks1B;
            this._io.writeU1(this.dummy);
        }

        public void _check() {
            if (_enabledBlocks0B) {
            }
            if (_enabledBlocks1B) {
            }
            _dirty = false;
        }
        public Integer blocks0B() {
            if (_shouldWriteBlocks0B)
                _writeBlocks0B();
            if (this.blocks0B != null)
                return this.blocks0B;
            if (!_enabledBlocks0B)
                return null;
            KaitaiStream io = _parent().blocks().get(((int) 0))._io();
            long _pos = io.pos();
            io.seek(4);
            this.blocks0B = io.readU1();
            io.seek(_pos);
            return this.blocks0B;
        }
        public void setBlocks0B(int _v) { _dirty = true; blocks0B = _v; }
        public void setBlocks0B_Enabled(boolean _v) { _dirty = true; _enabledBlocks0B = _v; }

        private void _writeBlocks0B() {
            _shouldWriteBlocks0B = false;
            KaitaiStream io = _parent().blocks().get(((int) 0))._io();
            long _pos = io.pos();
            io.seek(4);
            io.writeU1(this.blocks0B);
            io.seek(_pos);
        }
        public Integer blocks1B() {
            if (_shouldWriteBlocks1B)
                _writeBlocks1B();
            if (this.blocks1B != null)
                return this.blocks1B;
            if (!_enabledBlocks1B)
                return null;
            KaitaiStream io = _parent().blocks().get(((int) 1))._io();
            long _pos = io.pos();
            io.seek(4);
            this.blocks1B = io.readU1();
            io.seek(_pos);
            return this.blocks1B;
        }
        public void setBlocks1B(int _v) { _dirty = true; blocks1B = _v; }
        public void setBlocks1B_Enabled(boolean _v) { _dirty = true; _enabledBlocks1B = _v; }

        private void _writeBlocks1B() {
            _shouldWriteBlocks1B = false;
            KaitaiStream io = _parent().blocks().get(((int) 1))._io();
            long _pos = io.pos();
            io.seek(4);
            io.writeU1(this.blocks1B);
            io.seek(_pos);
        }
        public int dummy() { return dummy; }
        public void setDummy(int _v) { _dirty = true; dummy = _v; }
        public ProcessRepeatUsertypeDynargCustom _root() { return _root; }
        public void set_root(ProcessRepeatUsertypeDynargCustom _v) { _dirty = true; _root = _v; }
        public ProcessRepeatUsertypeDynargCustom _parent() { return _parent; }
        public void set_parent(ProcessRepeatUsertypeDynargCustom _v) { _dirty = true; _parent = _v; }
        private Integer blocks0B;
        private boolean _shouldWriteBlocks0B = false;
        private boolean _enabledBlocks0B = true;
        private Integer blocks1B;
        private boolean _shouldWriteBlocks1B = false;
        private boolean _enabledBlocks1B = true;
        private int dummy;
        private ProcessRepeatUsertypeDynargCustom _root;
        private ProcessRepeatUsertypeDynargCustom _parent;
    }
    public List<Block> blocks() { return blocks; }
    public void setBlocks(List<Block> _v) { _dirty = true; blocks = _v; }
    public BlocksBWrapper blocksB() { return blocksB; }
    public void setBlocksB(BlocksBWrapper _v) { _dirty = true; blocksB = _v; }
    public ProcessRepeatUsertypeDynargCustom _root() { return _root; }
    public void set_root(ProcessRepeatUsertypeDynargCustom _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    public List<byte[]> _raw_blocks() { return _raw_blocks; }
    public void set_raw_Blocks(List<byte[]> _v) { _dirty = true; _raw_blocks = _v; }
    public List<Integer> blocks_InnerSize() { return blocks_InnerSize; }
    public void setBlocks_InnerSize(List<Integer> _v) { _dirty = true; blocks_InnerSize = _v; }
    public List<byte[]> _raw__raw_blocks() { return _raw__raw_blocks; }
    public void set_raw__raw_Blocks(List<byte[]> _v) { _dirty = true; _raw__raw_blocks = _v; }
    private List<Block> blocks;
    private BlocksBWrapper blocksB;
    private ProcessRepeatUsertypeDynargCustom _root;
    private KaitaiStruct.ReadWrite _parent;
    private List<byte[]> _raw_blocks;
    private List<Integer> blocks_InnerSize;
    private List<byte[]> _raw__raw_blocks;
}
