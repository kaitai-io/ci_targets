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

public class ProcessRepeatUsertype extends KaitaiStruct.ReadWrite {
    public static ProcessRepeatUsertype fromFile(String fileName) throws IOException {
        return new ProcessRepeatUsertype(new ByteBufferKaitaiStream(fileName));
    }
    public ProcessRepeatUsertype() {
        this(null, null, null);
    }

    public ProcessRepeatUsertype(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ProcessRepeatUsertype(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ProcessRepeatUsertype(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ProcessRepeatUsertype _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this._raw_blocks = new ArrayList<byte[]>();
        this._raw__raw_blocks = new ArrayList<byte[]>();
        this.blocks = new ArrayList<Block>();
        for (int i = 0; i < 2; i++) {
            this._raw__raw_blocks.add(this._io.readBytes(5));
            this._raw_blocks.add(KaitaiStream.processXor(this._raw__raw_blocks.get(i), ((byte) 158)));
            KaitaiStream _io__raw_blocks = new ByteBufferKaitaiStream(this._raw_blocks.get(i));
            Block _t_blocks = new Block(_io__raw_blocks, this, _root);
            try {
                _t_blocks._read();
            } finally {
                this.blocks.add(_t_blocks);
            }
        }
        _dirty = false;
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.blocks.size(); i++) {
            this.blocks.get(((Number) (i)).intValue())._fetchInstances();
        }
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._raw_blocks = new ArrayList<byte[]>();
        this._raw__raw_blocks = new ArrayList<byte[]>();
        for (int i = 0; i < this.blocks.size(); i++) {
            final KaitaiStream _io__raw_blocks = new ByteBufferKaitaiStream(5);
            this._io.addChildStream(_io__raw_blocks);
            {
                long _pos2 = this._io.pos();
                this._io.seek(this._io.pos() + (5));
                final int _processXorArg = 158;
                final ProcessRepeatUsertype _this = this;
                final int _i = i;
                _io__raw_blocks.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                    @Override
                    protected void write(KaitaiStream parent) {
                        _this._raw_blocks.add(_io__raw_blocks.toByteArray());
                        _this._raw__raw_blocks.add(KaitaiStream.processXor(_this._raw_blocks.get(((Number) (_i)).intValue()), ((Number) (_processXorArg)).byteValue()));
                        if (_this._raw__raw_blocks.get(((Number) (_i)).intValue()).length != 5)
                            throw new ConsistencyError("raw(blocks)", _this._raw__raw_blocks.get(((Number) (_i)).intValue()).length, 5);
                        parent.writeBytes(_this._raw__raw_blocks.get(((Number) (_i)).intValue()));
                    }
                });
            }
            this.blocks.get(((Number) (i)).intValue())._write_Seq(_io__raw_blocks);
        }
    }

    public void _check() {
        if (this.blocks.size() != 2)
            throw new ConsistencyError("blocks", this.blocks.size(), 2);
        for (int i = 0; i < this.blocks.size(); i++) {
            if (!Objects.equals(this.blocks.get(((Number) (i)).intValue())._root(), _root()))
                throw new ConsistencyError("blocks", this.blocks.get(((Number) (i)).intValue())._root(), _root());
            if (!Objects.equals(this.blocks.get(((Number) (i)).intValue())._parent(), this))
                throw new ConsistencyError("blocks", this.blocks.get(((Number) (i)).intValue())._parent(), this);
        }
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

        public Block(KaitaiStream _io, ProcessRepeatUsertype _parent) {
            this(_io, _parent, null);
        }

        public Block(KaitaiStream _io, ProcessRepeatUsertype _parent, ProcessRepeatUsertype _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.a = this._io.readS4le();
            this.b = this._io.readS1();
            _dirty = false;
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            _assertNotDirty();
            this._io.writeS4le(this.a);
            this._io.writeS1(this.b);
        }

        public void _check() {
            _dirty = false;
        }
        private int a;
        private byte b;
        private ProcessRepeatUsertype _root;
        private ProcessRepeatUsertype _parent;
        public int a() { return a; }
        public void setA(int _v) { _dirty = true; a = _v; }
        public byte b() { return b; }
        public void setB(byte _v) { _dirty = true; b = _v; }
        public ProcessRepeatUsertype _root() { return _root; }
        public void set_root(ProcessRepeatUsertype _v) { _dirty = true; _root = _v; }
        public ProcessRepeatUsertype _parent() { return _parent; }
        public void set_parent(ProcessRepeatUsertype _v) { _dirty = true; _parent = _v; }
    }
    private List<Block> blocks;
    private ProcessRepeatUsertype _root;
    private KaitaiStruct.ReadWrite _parent;
    private List<byte[]> _raw_blocks;
    private List<byte[]> _raw__raw_blocks;
    public List<Block> blocks() { return blocks; }
    public void setBlocks(List<Block> _v) { _dirty = true; blocks = _v; }
    public ProcessRepeatUsertype _root() { return _root; }
    public void set_root(ProcessRepeatUsertype _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    public List<byte[]> _raw_blocks() { return _raw_blocks; }
    public void set_raw_Blocks(List<byte[]> _v) { _dirty = true; _raw_blocks = _v; }
    public List<byte[]> _raw__raw_blocks() { return _raw__raw_blocks; }
    public void set_raw__raw_Blocks(List<byte[]> _v) { _dirty = true; _raw__raw_blocks = _v; }
}
