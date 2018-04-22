// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;

public class IfValues extends KaitaiStruct {
    public static IfValues fromFile(String fileName) throws IOException {
        return new IfValues(new ByteBufferKaitaiStream(fileName));
    }

    public IfValues(KaitaiStream _io) {
        this(_io, null, null);
    }

    public IfValues(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public IfValues(KaitaiStream _io, KaitaiStruct _parent, IfValues _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        codes = new ArrayList<Code>((int) (3));
        for (int i = 0; i < 3; i++) {
            this.codes.add(new Code(this._io, this, _root));
        }
    }
    public static class Code extends KaitaiStruct {
        public static Code fromFile(String fileName) throws IOException {
            return new Code(new ByteBufferKaitaiStream(fileName));
        }

        public Code(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Code(KaitaiStream _io, IfValues _parent) {
            this(_io, _parent, null);
        }

        public Code(KaitaiStream _io, IfValues _parent, IfValues _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.opcode = this._io.readU1();
        }
        private Integer halfOpcode;
        public Integer halfOpcode() {
            if (this.halfOpcode != null)
                return this.halfOpcode;
            if (KaitaiStream.mod(opcode(), 2) == 0) {
                int _tmp = (int) ((opcode() / 2));
                this.halfOpcode = _tmp;
            }
            return this.halfOpcode;
        }
        private int opcode;
        private IfValues _root;
        private IfValues _parent;
        public int opcode() { return opcode; }
        public IfValues _root() { return _root; }
        public IfValues _parent() { return _parent; }
    }
    private ArrayList<Code> codes;
    private IfValues _root;
    private KaitaiStruct _parent;
    public ArrayList<Code> codes() { return codes; }
    public IfValues _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
