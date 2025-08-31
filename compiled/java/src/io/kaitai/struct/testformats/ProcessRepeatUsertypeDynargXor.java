// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class ProcessRepeatUsertypeDynargXor extends KaitaiStruct {
    public static ProcessRepeatUsertypeDynargXor fromFile(String fileName) throws IOException {
        return new ProcessRepeatUsertypeDynargXor(new ByteBufferKaitaiStream(fileName));
    }

    public ProcessRepeatUsertypeDynargXor(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ProcessRepeatUsertypeDynargXor(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ProcessRepeatUsertypeDynargXor(KaitaiStream _io, KaitaiStruct _parent, ProcessRepeatUsertypeDynargXor _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this._raw_blocks = new ArrayList<byte[]>();
        this._raw__raw_blocks = new ArrayList<byte[]>();
        this.blocks = new ArrayList<Block>();
        for (int i = 0; i < 2; i++) {
            this._raw__raw_blocks.add(this._io.readBytes(5));
            this._raw_blocks.add(KaitaiStream.processXor(this._raw__raw_blocks.get(i), ((Number) (155 ^ (i << 4 | _io().pos()))).byteValue()));
            KaitaiStream _io__raw_blocks = new ByteBufferKaitaiStream(this._raw_blocks.get(i));
            this.blocks.add(new Block(_io__raw_blocks, this, _root));
        }
        this.blocksB = new BlocksBWrapper(this._io, this, _root);
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.blocks.size(); i++) {
            this.blocks.get(((Number) (i)).intValue())._fetchInstances();
        }
        this.blocksB._fetchInstances();
    }
    public static class Block extends KaitaiStruct {
        public static Block fromFile(String fileName) throws IOException {
            return new Block(new ByteBufferKaitaiStream(fileName));
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
            _read();
        }
        private void _read() {
            this.a = this._io.readU4le();
        }

        public void _fetchInstances() {
        }
        private long a;
        private ProcessRepeatUsertypeDynargXor _root;
        private ProcessRepeatUsertypeDynargXor _parent;
        public long a() { return a; }
        public ProcessRepeatUsertypeDynargXor _root() { return _root; }
        public ProcessRepeatUsertypeDynargXor _parent() { return _parent; }
    }
    public static class BlocksBWrapper extends KaitaiStruct {
        public static BlocksBWrapper fromFile(String fileName) throws IOException {
            return new BlocksBWrapper(new ByteBufferKaitaiStream(fileName));
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
            _read();
        }
        private void _read() {
            this.dummy = this._io.readU1();
        }

        public void _fetchInstances() {
            blocks0B();
            blocks1B();
        }
        private Integer blocks0B;
        public Integer blocks0B() {
            if (this.blocks0B != null)
                return this.blocks0B;
            KaitaiStream io = _parent().blocks().get(((int) 0))._io();
            long _pos = io.pos();
            io.seek(4);
            this.blocks0B = io.readU1();
            io.seek(_pos);
            return this.blocks0B;
        }
        private Integer blocks1B;
        public Integer blocks1B() {
            if (this.blocks1B != null)
                return this.blocks1B;
            KaitaiStream io = _parent().blocks().get(((int) 1))._io();
            long _pos = io.pos();
            io.seek(4);
            this.blocks1B = io.readU1();
            io.seek(_pos);
            return this.blocks1B;
        }
        private int dummy;
        private ProcessRepeatUsertypeDynargXor _root;
        private ProcessRepeatUsertypeDynargXor _parent;
        public int dummy() { return dummy; }
        public ProcessRepeatUsertypeDynargXor _root() { return _root; }
        public ProcessRepeatUsertypeDynargXor _parent() { return _parent; }
    }
    private List<Block> blocks;
    private BlocksBWrapper blocksB;
    private ProcessRepeatUsertypeDynargXor _root;
    private KaitaiStruct _parent;
    private List<byte[]> _raw_blocks;
    private List<byte[]> _raw__raw_blocks;
    public List<Block> blocks() { return blocks; }
    public BlocksBWrapper blocksB() { return blocksB; }
    public ProcessRepeatUsertypeDynargXor _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    public List<byte[]> _raw_blocks() { return _raw_blocks; }
    public List<byte[]> _raw__raw_blocks() { return _raw__raw_blocks; }
}
