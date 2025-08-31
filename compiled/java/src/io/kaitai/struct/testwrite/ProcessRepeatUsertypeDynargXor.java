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

public class ProcessRepeatUsertypeDynargXor extends KaitaiStruct.ReadWrite {
    public static ProcessRepeatUsertypeDynargXor fromFile(String fileName) throws IOException {
        return new ProcessRepeatUsertypeDynargXor(new ByteBufferKaitaiStream(fileName));
    }
    public ProcessRepeatUsertypeDynargXor() {
        this(null, null, null);
    }

    public ProcessRepeatUsertypeDynargXor(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ProcessRepeatUsertypeDynargXor(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ProcessRepeatUsertypeDynargXor(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ProcessRepeatUsertypeDynargXor _root) {
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
            this._raw_blocks.add(KaitaiStream.processXor(this._raw__raw_blocks.get(i), ((Number) (155 ^ (i << 4 | _io().pos()))).byteValue()));
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
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.blocks.size(); i++) {
            this.blocks.get(((Number) (i)).intValue())._fetchInstances();
        }
        this.blocksB._fetchInstances();
    }

    public void _write_Seq() {
        this._raw_blocks = new ArrayList<byte[]>();
        this._raw__raw_blocks = new ArrayList<byte[]>();
        for (int i = 0; i < this.blocks.size(); i++) {
            final KaitaiStream _io__raw_blocks = new ByteBufferKaitaiStream(5);
            this._io.addChildStream(_io__raw_blocks);
            {
                long _pos2 = this._io.pos();
                this._io.seek(this._io.pos() + (5));
                final int _processXorArg = 155 ^ (i << 4 | _io().pos());
                final ProcessRepeatUsertypeDynargXor _this = this;
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
        this.blocksB._write_Seq(this._io);
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
        if (!Objects.equals(this.blocksB._root(), _root()))
            throw new ConsistencyError("blocks_b", this.blocksB._root(), _root());
        if (!Objects.equals(this.blocksB._parent(), this))
            throw new ConsistencyError("blocks_b", this.blocksB._parent(), this);
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

        public Block(KaitaiStream _io, ProcessRepeatUsertypeDynargXor _parent) {
            this(_io, _parent, null);
        }

        public Block(KaitaiStream _io, ProcessRepeatUsertypeDynargXor _parent, ProcessRepeatUsertypeDynargXor _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.a = this._io.readU4le();
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            this._io.writeU4le(this.a);
        }

        public void _check() {
        }
        private long a;
        private ProcessRepeatUsertypeDynargXor _root;
        private ProcessRepeatUsertypeDynargXor _parent;
        public long a() { return a; }
        public void setA(long _v) { a = _v; }
        public ProcessRepeatUsertypeDynargXor _root() { return _root; }
        public void set_root(ProcessRepeatUsertypeDynargXor _v) { _root = _v; }
        public ProcessRepeatUsertypeDynargXor _parent() { return _parent; }
        public void set_parent(ProcessRepeatUsertypeDynargXor _v) { _parent = _v; }
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

        public BlocksBWrapper(KaitaiStream _io, ProcessRepeatUsertypeDynargXor _parent) {
            this(_io, _parent, null);
        }

        public BlocksBWrapper(KaitaiStream _io, ProcessRepeatUsertypeDynargXor _parent, ProcessRepeatUsertypeDynargXor _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.dummy = this._io.readU1();
        }

        public void _fetchInstances() {
            blocks0B();
            blocks1B();
        }

        public void _write_Seq() {
            _writeBlocks0B = _toWriteBlocks0B;
            _writeBlocks1B = _toWriteBlocks1B;
            this._io.writeU1(this.dummy);
        }

        public void _check() {
        }
        private Integer blocks0B;
        private boolean _writeBlocks0B = false;
        private boolean _toWriteBlocks0B = true;
        public Integer blocks0B() {
            if (_writeBlocks0B)
                _writeBlocks0B();
            if (this.blocks0B != null)
                return this.blocks0B;
            KaitaiStream io = _parent().blocks().get(((int) 0))._io();
            long _pos = io.pos();
            io.seek(4);
            this.blocks0B = io.readU1();
            io.seek(_pos);
            return this.blocks0B;
        }
        public void setBlocks0B(int _v) { blocks0B = _v; }
        public void setBlocks0B_ToWrite(boolean _v) { _toWriteBlocks0B = _v; }

        public void _writeBlocks0B() {
            _writeBlocks0B = false;
            KaitaiStream io = _parent().blocks().get(((int) 0))._io();
            long _pos = io.pos();
            io.seek(4);
            io.writeU1(this.blocks0B);
            io.seek(_pos);
        }

        public void _checkBlocks0B() {
        }
        private Integer blocks1B;
        private boolean _writeBlocks1B = false;
        private boolean _toWriteBlocks1B = true;
        public Integer blocks1B() {
            if (_writeBlocks1B)
                _writeBlocks1B();
            if (this.blocks1B != null)
                return this.blocks1B;
            KaitaiStream io = _parent().blocks().get(((int) 1))._io();
            long _pos = io.pos();
            io.seek(4);
            this.blocks1B = io.readU1();
            io.seek(_pos);
            return this.blocks1B;
        }
        public void setBlocks1B(int _v) { blocks1B = _v; }
        public void setBlocks1B_ToWrite(boolean _v) { _toWriteBlocks1B = _v; }

        public void _writeBlocks1B() {
            _writeBlocks1B = false;
            KaitaiStream io = _parent().blocks().get(((int) 1))._io();
            long _pos = io.pos();
            io.seek(4);
            io.writeU1(this.blocks1B);
            io.seek(_pos);
        }

        public void _checkBlocks1B() {
        }
        private int dummy;
        private ProcessRepeatUsertypeDynargXor _root;
        private ProcessRepeatUsertypeDynargXor _parent;
        public int dummy() { return dummy; }
        public void setDummy(int _v) { dummy = _v; }
        public ProcessRepeatUsertypeDynargXor _root() { return _root; }
        public void set_root(ProcessRepeatUsertypeDynargXor _v) { _root = _v; }
        public ProcessRepeatUsertypeDynargXor _parent() { return _parent; }
        public void set_parent(ProcessRepeatUsertypeDynargXor _v) { _parent = _v; }
    }
    private List<Block> blocks;
    private BlocksBWrapper blocksB;
    private ProcessRepeatUsertypeDynargXor _root;
    private KaitaiStruct.ReadWrite _parent;
    private List<byte[]> _raw_blocks;
    private List<byte[]> _raw__raw_blocks;
    public List<Block> blocks() { return blocks; }
    public void setBlocks(List<Block> _v) { blocks = _v; }
    public BlocksBWrapper blocksB() { return blocksB; }
    public void setBlocksB(BlocksBWrapper _v) { blocksB = _v; }
    public ProcessRepeatUsertypeDynargXor _root() { return _root; }
    public void set_root(ProcessRepeatUsertypeDynargXor _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
    public List<byte[]> _raw_blocks() { return _raw_blocks; }
    public void set_raw_Blocks(List<byte[]> _v) { _raw_blocks = _v; }
    public List<byte[]> _raw__raw_blocks() { return _raw__raw_blocks; }
    public void set_raw__raw_Blocks(List<byte[]> _v) { _raw__raw_blocks = _v; }
}
