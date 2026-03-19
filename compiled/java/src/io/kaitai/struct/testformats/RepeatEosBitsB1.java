// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class RepeatEosBitsB1 extends KaitaiStruct {
    public static RepeatEosBitsB1 fromFile(String fileName) throws IOException {
        return new RepeatEosBitsB1(new ByteBufferKaitaiStream(fileName));
    }

    public RepeatEosBitsB1(KaitaiStream _io) {
        this(_io, null, null);
    }

    public RepeatEosBitsB1(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public RepeatEosBitsB1(KaitaiStream _io, KaitaiStruct _parent, RepeatEosBitsB1 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.bits = new ArrayList<Boolean>();
        {
            int i = 0;
            while (!this._io.isEof()) {
                this.bits.add(this._io.readBitsIntBe(1) != 0);
                i++;
            }
        }
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.bits.size(); i++) {
        }
    }
    public List<Boolean> bits() { return bits; }
    public RepeatEosBitsB1 _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private List<Boolean> bits;
    private RepeatEosBitsB1 _root;
    private KaitaiStruct _parent;
}
