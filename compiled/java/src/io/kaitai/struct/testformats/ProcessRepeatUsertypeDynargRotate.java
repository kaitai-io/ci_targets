// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class ProcessRepeatUsertypeDynargRotate extends KaitaiStruct {
    public static ProcessRepeatUsertypeDynargRotate fromFile(String fileName) throws IOException {
        return new ProcessRepeatUsertypeDynargRotate(new ByteBufferKaitaiStream(fileName));
    }

    public ProcessRepeatUsertypeDynargRotate(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ProcessRepeatUsertypeDynargRotate(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ProcessRepeatUsertypeDynargRotate(KaitaiStream _io, KaitaiStruct _parent, ProcessRepeatUsertypeDynargRotate _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this._raw_blocksRol = new ArrayList<byte[]>();
        this._raw__raw_blocksRol = new ArrayList<byte[]>();
        this.blocksRol = new ArrayList<Block>();
        for (int i = 0; i < 2; i++) {
            this._raw__raw_blocksRol.add(this._io.readBytes(3));
            this._raw_blocksRol.add(KaitaiStream.processRotateLeft(this._raw__raw_blocksRol.get(i), _io().pos() - 4 * i, 1));
            KaitaiStream _io__raw_blocksRol = new ByteBufferKaitaiStream(this._raw_blocksRol.get(i));
            this.blocksRol.add(new Block(_io__raw_blocksRol, this, _root));
        }
        this._raw_blocksRor = new ArrayList<byte[]>();
        this._raw__raw_blocksRor = new ArrayList<byte[]>();
        this.blocksRor = new ArrayList<Block>();
        for (int i = 0; i < 3; i++) {
            this._raw__raw_blocksRor.add(this._io.readBytes(3));
            this._raw_blocksRor.add(KaitaiStream.processRotateLeft(this._raw__raw_blocksRor.get(i), 8 - ((_io().pos() - 6) - 4 * i), 1));
            KaitaiStream _io__raw_blocksRor = new ByteBufferKaitaiStream(this._raw_blocksRor.get(i));
            this.blocksRor.add(new Block(_io__raw_blocksRor, this, _root));
        }
        this.blocksB = new BlocksBWrapper(this._io, this, _root);
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
    public static class Block extends KaitaiStruct {
        public static Block fromFile(String fileName) throws IOException {
            return new Block(new ByteBufferKaitaiStream(fileName));
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
            _read();
        }
        private void _read() {
            this.a = this._io.readU2le();
        }

        public void _fetchInstances() {
        }
        private int a;
        private ProcessRepeatUsertypeDynargRotate _root;
        private ProcessRepeatUsertypeDynargRotate _parent;
        public int a() { return a; }
        public ProcessRepeatUsertypeDynargRotate _root() { return _root; }
        public ProcessRepeatUsertypeDynargRotate _parent() { return _parent; }
    }
    public static class BlocksBWrapper extends KaitaiStruct {
        public static BlocksBWrapper fromFile(String fileName) throws IOException {
            return new BlocksBWrapper(new ByteBufferKaitaiStream(fileName));
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
            _read();
        }
        private void _read() {
            this.dummy = this._io.readU1();
        }

        public void _fetchInstances() {
            blocksRol0B();
            blocksRol1B();
            blocksRor0B();
            blocksRor1B();
            blocksRor2B();
        }
        private Integer blocksRol0B;
        public Integer blocksRol0B() {
            if (this.blocksRol0B != null)
                return this.blocksRol0B;
            KaitaiStream io = _parent().blocksRol().get(((int) 0))._io();
            long _pos = io.pos();
            io.seek(2);
            this.blocksRol0B = io.readU1();
            io.seek(_pos);
            return this.blocksRol0B;
        }
        private Integer blocksRol1B;
        public Integer blocksRol1B() {
            if (this.blocksRol1B != null)
                return this.blocksRol1B;
            KaitaiStream io = _parent().blocksRol().get(((int) 1))._io();
            long _pos = io.pos();
            io.seek(2);
            this.blocksRol1B = io.readU1();
            io.seek(_pos);
            return this.blocksRol1B;
        }
        private Integer blocksRor0B;
        public Integer blocksRor0B() {
            if (this.blocksRor0B != null)
                return this.blocksRor0B;
            KaitaiStream io = _parent().blocksRor().get(((int) 0))._io();
            long _pos = io.pos();
            io.seek(2);
            this.blocksRor0B = io.readU1();
            io.seek(_pos);
            return this.blocksRor0B;
        }
        private Integer blocksRor1B;
        public Integer blocksRor1B() {
            if (this.blocksRor1B != null)
                return this.blocksRor1B;
            KaitaiStream io = _parent().blocksRor().get(((int) 1))._io();
            long _pos = io.pos();
            io.seek(2);
            this.blocksRor1B = io.readU1();
            io.seek(_pos);
            return this.blocksRor1B;
        }
        private Integer blocksRor2B;
        public Integer blocksRor2B() {
            if (this.blocksRor2B != null)
                return this.blocksRor2B;
            KaitaiStream io = _parent().blocksRor().get(((int) 2))._io();
            long _pos = io.pos();
            io.seek(2);
            this.blocksRor2B = io.readU1();
            io.seek(_pos);
            return this.blocksRor2B;
        }
        private int dummy;
        private ProcessRepeatUsertypeDynargRotate _root;
        private ProcessRepeatUsertypeDynargRotate _parent;
        public int dummy() { return dummy; }
        public ProcessRepeatUsertypeDynargRotate _root() { return _root; }
        public ProcessRepeatUsertypeDynargRotate _parent() { return _parent; }
    }
    private List<Block> blocksRol;
    private List<Block> blocksRor;
    private BlocksBWrapper blocksB;
    private ProcessRepeatUsertypeDynargRotate _root;
    private KaitaiStruct _parent;
    private List<byte[]> _raw_blocksRol;
    private List<byte[]> _raw__raw_blocksRol;
    private List<byte[]> _raw_blocksRor;
    private List<byte[]> _raw__raw_blocksRor;
    public List<Block> blocksRol() { return blocksRol; }
    public List<Block> blocksRor() { return blocksRor; }
    public BlocksBWrapper blocksB() { return blocksB; }
    public ProcessRepeatUsertypeDynargRotate _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    public List<byte[]> _raw_blocksRol() { return _raw_blocksRol; }
    public List<byte[]> _raw__raw_blocksRol() { return _raw__raw_blocksRol; }
    public List<byte[]> _raw_blocksRor() { return _raw_blocksRor; }
    public List<byte[]> _raw__raw_blocksRor() { return _raw__raw_blocksRor; }
}
