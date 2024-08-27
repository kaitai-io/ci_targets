// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class BcdUserTypeLe : KaitaiStruct
    {
        public static BcdUserTypeLe FromFile(string fileName)
        {
            return new BcdUserTypeLe(new KaitaiStream(fileName));
        }

        public BcdUserTypeLe(KaitaiStream p__io, KaitaiStruct p__parent = null, BcdUserTypeLe p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            __raw_ltr = m_io.ReadBytes(4);
            var io___raw_ltr = new KaitaiStream(__raw_ltr);
            _ltr = new LtrObj(io___raw_ltr, this, m_root);
            __raw_rtl = m_io.ReadBytes(4);
            var io___raw_rtl = new KaitaiStream(__raw_rtl);
            _rtl = new RtlObj(io___raw_rtl, this, m_root);
            __raw_leadingZeroLtr = m_io.ReadBytes(4);
            var io___raw_leadingZeroLtr = new KaitaiStream(__raw_leadingZeroLtr);
            _leadingZeroLtr = new LeadingZeroLtrObj(io___raw_leadingZeroLtr, this, m_root);
        }
        public partial class LeadingZeroLtrObj : KaitaiStruct
        {
            public static LeadingZeroLtrObj FromFile(string fileName)
            {
                return new LeadingZeroLtrObj(new KaitaiStream(fileName));
            }

            public LeadingZeroLtrObj(KaitaiStream p__io, BcdUserTypeLe p__parent = null, BcdUserTypeLe p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                f_asInt = false;
                f_asStr = false;
                f_digit1 = false;
                f_digit2 = false;
                f_digit3 = false;
                f_digit4 = false;
                f_digit5 = false;
                f_digit6 = false;
                f_digit7 = false;
                f_digit8 = false;
                _read();
            }
            private void _read()
            {
                _b1 = m_io.ReadU1();
                _b2 = m_io.ReadU1();
                _b3 = m_io.ReadU1();
                _b4 = m_io.ReadU1();
            }
            private bool f_asInt;
            private int _asInt;
            public int AsInt
            {
                get
                {
                    if (f_asInt)
                        return _asInt;
                    f_asInt = true;
                    _asInt = (int) (((((((Digit8 * 1 + Digit7 * 10) + Digit6 * 100) + Digit5 * 1000) + Digit4 * 10000) + Digit3 * 100000) + Digit2 * 1000000) + Digit1 * 10000000);
                    return _asInt;
                }
            }
            private bool f_asStr;
            private string _asStr;
            public string AsStr
            {
                get
                {
                    if (f_asStr)
                        return _asStr;
                    f_asStr = true;
                    _asStr = (string) (((((((Digit1.ToString() + Digit2.ToString()) + Digit3.ToString()) + Digit4.ToString()) + Digit5.ToString()) + Digit6.ToString()) + Digit7.ToString()) + Digit8.ToString());
                    return _asStr;
                }
            }
            private bool f_digit1;
            private int _digit1;
            public int Digit1
            {
                get
                {
                    if (f_digit1)
                        return _digit1;
                    f_digit1 = true;
                    _digit1 = (int) ((B4 & 240) >> 4);
                    return _digit1;
                }
            }
            private bool f_digit2;
            private int _digit2;
            public int Digit2
            {
                get
                {
                    if (f_digit2)
                        return _digit2;
                    f_digit2 = true;
                    _digit2 = (int) (B4 & 15);
                    return _digit2;
                }
            }
            private bool f_digit3;
            private int _digit3;
            public int Digit3
            {
                get
                {
                    if (f_digit3)
                        return _digit3;
                    f_digit3 = true;
                    _digit3 = (int) ((B3 & 240) >> 4);
                    return _digit3;
                }
            }
            private bool f_digit4;
            private int _digit4;
            public int Digit4
            {
                get
                {
                    if (f_digit4)
                        return _digit4;
                    f_digit4 = true;
                    _digit4 = (int) (B3 & 15);
                    return _digit4;
                }
            }
            private bool f_digit5;
            private int _digit5;
            public int Digit5
            {
                get
                {
                    if (f_digit5)
                        return _digit5;
                    f_digit5 = true;
                    _digit5 = (int) ((B2 & 240) >> 4);
                    return _digit5;
                }
            }
            private bool f_digit6;
            private int _digit6;
            public int Digit6
            {
                get
                {
                    if (f_digit6)
                        return _digit6;
                    f_digit6 = true;
                    _digit6 = (int) (B2 & 15);
                    return _digit6;
                }
            }
            private bool f_digit7;
            private int _digit7;
            public int Digit7
            {
                get
                {
                    if (f_digit7)
                        return _digit7;
                    f_digit7 = true;
                    _digit7 = (int) ((B1 & 240) >> 4);
                    return _digit7;
                }
            }
            private bool f_digit8;
            private int _digit8;
            public int Digit8
            {
                get
                {
                    if (f_digit8)
                        return _digit8;
                    f_digit8 = true;
                    _digit8 = (int) (B1 & 15);
                    return _digit8;
                }
            }
            private byte _b1;
            private byte _b2;
            private byte _b3;
            private byte _b4;
            private BcdUserTypeLe m_root;
            private BcdUserTypeLe m_parent;
            public byte B1 { get { return _b1; } }
            public byte B2 { get { return _b2; } }
            public byte B3 { get { return _b3; } }
            public byte B4 { get { return _b4; } }
            public BcdUserTypeLe M_Root { get { return m_root; } }
            public BcdUserTypeLe M_Parent { get { return m_parent; } }
        }
        public partial class LtrObj : KaitaiStruct
        {
            public static LtrObj FromFile(string fileName)
            {
                return new LtrObj(new KaitaiStream(fileName));
            }

            public LtrObj(KaitaiStream p__io, BcdUserTypeLe p__parent = null, BcdUserTypeLe p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                f_asInt = false;
                f_asStr = false;
                f_digit1 = false;
                f_digit2 = false;
                f_digit3 = false;
                f_digit4 = false;
                f_digit5 = false;
                f_digit6 = false;
                f_digit7 = false;
                f_digit8 = false;
                _read();
            }
            private void _read()
            {
                _b1 = m_io.ReadU1();
                _b2 = m_io.ReadU1();
                _b3 = m_io.ReadU1();
                _b4 = m_io.ReadU1();
            }
            private bool f_asInt;
            private int _asInt;
            public int AsInt
            {
                get
                {
                    if (f_asInt)
                        return _asInt;
                    f_asInt = true;
                    _asInt = (int) (((((((Digit8 * 1 + Digit7 * 10) + Digit6 * 100) + Digit5 * 1000) + Digit4 * 10000) + Digit3 * 100000) + Digit2 * 1000000) + Digit1 * 10000000);
                    return _asInt;
                }
            }
            private bool f_asStr;
            private string _asStr;
            public string AsStr
            {
                get
                {
                    if (f_asStr)
                        return _asStr;
                    f_asStr = true;
                    _asStr = (string) (((((((Digit1.ToString() + Digit2.ToString()) + Digit3.ToString()) + Digit4.ToString()) + Digit5.ToString()) + Digit6.ToString()) + Digit7.ToString()) + Digit8.ToString());
                    return _asStr;
                }
            }
            private bool f_digit1;
            private int _digit1;
            public int Digit1
            {
                get
                {
                    if (f_digit1)
                        return _digit1;
                    f_digit1 = true;
                    _digit1 = (int) ((B4 & 240) >> 4);
                    return _digit1;
                }
            }
            private bool f_digit2;
            private int _digit2;
            public int Digit2
            {
                get
                {
                    if (f_digit2)
                        return _digit2;
                    f_digit2 = true;
                    _digit2 = (int) (B4 & 15);
                    return _digit2;
                }
            }
            private bool f_digit3;
            private int _digit3;
            public int Digit3
            {
                get
                {
                    if (f_digit3)
                        return _digit3;
                    f_digit3 = true;
                    _digit3 = (int) ((B3 & 240) >> 4);
                    return _digit3;
                }
            }
            private bool f_digit4;
            private int _digit4;
            public int Digit4
            {
                get
                {
                    if (f_digit4)
                        return _digit4;
                    f_digit4 = true;
                    _digit4 = (int) (B3 & 15);
                    return _digit4;
                }
            }
            private bool f_digit5;
            private int _digit5;
            public int Digit5
            {
                get
                {
                    if (f_digit5)
                        return _digit5;
                    f_digit5 = true;
                    _digit5 = (int) ((B2 & 240) >> 4);
                    return _digit5;
                }
            }
            private bool f_digit6;
            private int _digit6;
            public int Digit6
            {
                get
                {
                    if (f_digit6)
                        return _digit6;
                    f_digit6 = true;
                    _digit6 = (int) (B2 & 15);
                    return _digit6;
                }
            }
            private bool f_digit7;
            private int _digit7;
            public int Digit7
            {
                get
                {
                    if (f_digit7)
                        return _digit7;
                    f_digit7 = true;
                    _digit7 = (int) ((B1 & 240) >> 4);
                    return _digit7;
                }
            }
            private bool f_digit8;
            private int _digit8;
            public int Digit8
            {
                get
                {
                    if (f_digit8)
                        return _digit8;
                    f_digit8 = true;
                    _digit8 = (int) (B1 & 15);
                    return _digit8;
                }
            }
            private byte _b1;
            private byte _b2;
            private byte _b3;
            private byte _b4;
            private BcdUserTypeLe m_root;
            private BcdUserTypeLe m_parent;
            public byte B1 { get { return _b1; } }
            public byte B2 { get { return _b2; } }
            public byte B3 { get { return _b3; } }
            public byte B4 { get { return _b4; } }
            public BcdUserTypeLe M_Root { get { return m_root; } }
            public BcdUserTypeLe M_Parent { get { return m_parent; } }
        }
        public partial class RtlObj : KaitaiStruct
        {
            public static RtlObj FromFile(string fileName)
            {
                return new RtlObj(new KaitaiStream(fileName));
            }

            public RtlObj(KaitaiStream p__io, BcdUserTypeLe p__parent = null, BcdUserTypeLe p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                f_asInt = false;
                f_asStr = false;
                f_digit1 = false;
                f_digit2 = false;
                f_digit3 = false;
                f_digit4 = false;
                f_digit5 = false;
                f_digit6 = false;
                f_digit7 = false;
                f_digit8 = false;
                _read();
            }
            private void _read()
            {
                _b1 = m_io.ReadU1();
                _b2 = m_io.ReadU1();
                _b3 = m_io.ReadU1();
                _b4 = m_io.ReadU1();
            }
            private bool f_asInt;
            private int _asInt;
            public int AsInt
            {
                get
                {
                    if (f_asInt)
                        return _asInt;
                    f_asInt = true;
                    _asInt = (int) (((((((Digit1 * 1 + Digit2 * 10) + Digit3 * 100) + Digit4 * 1000) + Digit5 * 10000) + Digit6 * 100000) + Digit7 * 1000000) + Digit8 * 10000000);
                    return _asInt;
                }
            }
            private bool f_asStr;
            private string _asStr;
            public string AsStr
            {
                get
                {
                    if (f_asStr)
                        return _asStr;
                    f_asStr = true;
                    _asStr = (string) (((((((Digit8.ToString() + Digit7.ToString()) + Digit6.ToString()) + Digit5.ToString()) + Digit4.ToString()) + Digit3.ToString()) + Digit2.ToString()) + Digit1.ToString());
                    return _asStr;
                }
            }
            private bool f_digit1;
            private int _digit1;
            public int Digit1
            {
                get
                {
                    if (f_digit1)
                        return _digit1;
                    f_digit1 = true;
                    _digit1 = (int) ((B4 & 240) >> 4);
                    return _digit1;
                }
            }
            private bool f_digit2;
            private int _digit2;
            public int Digit2
            {
                get
                {
                    if (f_digit2)
                        return _digit2;
                    f_digit2 = true;
                    _digit2 = (int) (B4 & 15);
                    return _digit2;
                }
            }
            private bool f_digit3;
            private int _digit3;
            public int Digit3
            {
                get
                {
                    if (f_digit3)
                        return _digit3;
                    f_digit3 = true;
                    _digit3 = (int) ((B3 & 240) >> 4);
                    return _digit3;
                }
            }
            private bool f_digit4;
            private int _digit4;
            public int Digit4
            {
                get
                {
                    if (f_digit4)
                        return _digit4;
                    f_digit4 = true;
                    _digit4 = (int) (B3 & 15);
                    return _digit4;
                }
            }
            private bool f_digit5;
            private int _digit5;
            public int Digit5
            {
                get
                {
                    if (f_digit5)
                        return _digit5;
                    f_digit5 = true;
                    _digit5 = (int) ((B2 & 240) >> 4);
                    return _digit5;
                }
            }
            private bool f_digit6;
            private int _digit6;
            public int Digit6
            {
                get
                {
                    if (f_digit6)
                        return _digit6;
                    f_digit6 = true;
                    _digit6 = (int) (B2 & 15);
                    return _digit6;
                }
            }
            private bool f_digit7;
            private int _digit7;
            public int Digit7
            {
                get
                {
                    if (f_digit7)
                        return _digit7;
                    f_digit7 = true;
                    _digit7 = (int) ((B1 & 240) >> 4);
                    return _digit7;
                }
            }
            private bool f_digit8;
            private int _digit8;
            public int Digit8
            {
                get
                {
                    if (f_digit8)
                        return _digit8;
                    f_digit8 = true;
                    _digit8 = (int) (B1 & 15);
                    return _digit8;
                }
            }
            private byte _b1;
            private byte _b2;
            private byte _b3;
            private byte _b4;
            private BcdUserTypeLe m_root;
            private BcdUserTypeLe m_parent;
            public byte B1 { get { return _b1; } }
            public byte B2 { get { return _b2; } }
            public byte B3 { get { return _b3; } }
            public byte B4 { get { return _b4; } }
            public BcdUserTypeLe M_Root { get { return m_root; } }
            public BcdUserTypeLe M_Parent { get { return m_parent; } }
        }
        private LtrObj _ltr;
        private RtlObj _rtl;
        private LeadingZeroLtrObj _leadingZeroLtr;
        private BcdUserTypeLe m_root;
        private KaitaiStruct m_parent;
        private byte[] __raw_ltr;
        private byte[] __raw_rtl;
        private byte[] __raw_leadingZeroLtr;
        public LtrObj Ltr { get { return _ltr; } }
        public RtlObj Rtl { get { return _rtl; } }
        public LeadingZeroLtrObj LeadingZeroLtr { get { return _leadingZeroLtr; } }
        public BcdUserTypeLe M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        public byte[] M_RawLtr { get { return __raw_ltr; } }
        public byte[] M_RawRtl { get { return __raw_rtl; } }
        public byte[] M_RawLeadingZeroLtr { get { return __raw_leadingZeroLtr; } }
    }
}
