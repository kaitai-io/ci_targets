// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.nio.charset.StandardCharsets;
import java.util.Collections;

public class ExprArray extends KaitaiStruct {
    public static ExprArray fromFile(String fileName) throws IOException {
        return new ExprArray(new ByteBufferKaitaiStream(fileName));
    }

    public ExprArray(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ExprArray(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ExprArray(KaitaiStream _io, KaitaiStruct _parent, ExprArray _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.aint = new ArrayList<Long>();
        for (int i = 0; i < 4; i++) {
            this.aint.add(this._io.readU4le());
        }
        this.afloat = new ArrayList<Double>();
        for (int i = 0; i < 3; i++) {
            this.afloat.add(this._io.readF8le());
        }
        this.astr = new ArrayList<String>();
        for (int i = 0; i < 3; i++) {
            this.astr.add(new String(this._io.readBytesTerm((byte) 0, false, true, true), StandardCharsets.UTF_8));
        }
    }
    private Double afloatMin;
    public Double afloatMin() {
        if (this.afloatMin != null)
            return this.afloatMin;
        double _tmp = (double) (Collections.min(afloat()));
        this.afloatMin = _tmp;
        return this.afloatMin;
    }
    private String astrFirst;
    public String astrFirst() {
        if (this.astrFirst != null)
            return this.astrFirst;
        this.astrFirst = astr().get(0);
        return this.astrFirst;
    }
    private String astrMax;
    public String astrMax() {
        if (this.astrMax != null)
            return this.astrMax;
        this.astrMax = Collections.max(astr());
        return this.astrMax;
    }
    private Double afloatLast;
    public Double afloatLast() {
        if (this.afloatLast != null)
            return this.afloatLast;
        double _tmp = (double) (afloat().get(afloat().size() - 1));
        this.afloatLast = _tmp;
        return this.afloatLast;
    }
    private Integer afloatSize;
    public Integer afloatSize() {
        if (this.afloatSize != null)
            return this.afloatSize;
        int _tmp = (int) (afloat().size());
        this.afloatSize = _tmp;
        return this.afloatSize;
    }
    private Integer astrSize;
    public Integer astrSize() {
        if (this.astrSize != null)
            return this.astrSize;
        int _tmp = (int) (astr().size());
        this.astrSize = _tmp;
        return this.astrSize;
    }
    private Double afloatFirst;
    public Double afloatFirst() {
        if (this.afloatFirst != null)
            return this.afloatFirst;
        double _tmp = (double) (afloat().get(0));
        this.afloatFirst = _tmp;
        return this.afloatFirst;
    }
    private String astrMin;
    public String astrMin() {
        if (this.astrMin != null)
            return this.astrMin;
        this.astrMin = Collections.min(astr());
        return this.astrMin;
    }
    private Integer aintSize;
    public Integer aintSize() {
        if (this.aintSize != null)
            return this.aintSize;
        int _tmp = (int) (aint().size());
        this.aintSize = _tmp;
        return this.aintSize;
    }
    private Long aintLast;
    public Long aintLast() {
        if (this.aintLast != null)
            return this.aintLast;
        long _tmp = (long) (aint().get(aint().size() - 1));
        this.aintLast = _tmp;
        return this.aintLast;
    }
    private String astrLast;
    public String astrLast() {
        if (this.astrLast != null)
            return this.astrLast;
        this.astrLast = astr().get(astr().size() - 1);
        return this.astrLast;
    }
    private Long aintMin;
    public Long aintMin() {
        if (this.aintMin != null)
            return this.aintMin;
        long _tmp = (long) (Collections.min(aint()));
        this.aintMin = _tmp;
        return this.aintMin;
    }
    private Double afloatMax;
    public Double afloatMax() {
        if (this.afloatMax != null)
            return this.afloatMax;
        double _tmp = (double) (Collections.max(afloat()));
        this.afloatMax = _tmp;
        return this.afloatMax;
    }
    private Long aintMax;
    public Long aintMax() {
        if (this.aintMax != null)
            return this.aintMax;
        long _tmp = (long) (Collections.max(aint()));
        this.aintMax = _tmp;
        return this.aintMax;
    }
    private Long aintFirst;
    public Long aintFirst() {
        if (this.aintFirst != null)
            return this.aintFirst;
        long _tmp = (long) (aint().get(0));
        this.aintFirst = _tmp;
        return this.aintFirst;
    }
    private ArrayList<Long> aint;
    private ArrayList<Double> afloat;
    private ArrayList<String> astr;
    private ExprArray _root;
    private KaitaiStruct _parent;
    public ArrayList<Long> aint() { return aint; }
    public ArrayList<Double> afloat() { return afloat; }
    public ArrayList<String> astr() { return astr; }
    public ExprArray _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
