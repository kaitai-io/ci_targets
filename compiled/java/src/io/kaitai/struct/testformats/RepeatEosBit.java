// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;

public class RepeatEosBit extends KaitaiStruct {
    public static RepeatEosBit fromFile(String fileName) throws IOException {
        return new RepeatEosBit(new ByteBufferKaitaiStream(fileName));
    }

    public RepeatEosBit(KaitaiStream _io) {
        this(_io, null, null);
    }

    public RepeatEosBit(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public RepeatEosBit(KaitaiStream _io, KaitaiStruct _parent, RepeatEosBit _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.nibbles = new ArrayList<Long>();
        {
            int i = 0;
            while (!this._io.isEof()) {
                this.nibbles.add(this._io.readBitsInt(4));
                i++;
            }
        }
    }
    private ArrayList<Long> nibbles;
    private RepeatEosBit _root;
    private KaitaiStruct _parent;
    public ArrayList<Long> nibbles() { return nibbles; }
    public RepeatEosBit _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
