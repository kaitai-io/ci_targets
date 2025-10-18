// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class ValidSwitch : KaitaiStruct
    {
        public static ValidSwitch FromFile(string fileName)
        {
            return new ValidSwitch(new KaitaiStream(fileName));
        }

        public ValidSwitch(KaitaiStream p__io, KaitaiStruct p__parent = null, ValidSwitch p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _a = m_io.ReadU1();
            if (!(_a == 80))
            {
                throw new ValidationNotEqualError(80, _a, m_io, "/seq/0");
            }
            switch (A) {
            case 80: {
                _b = m_io.ReadU2le();
                break;
            }
            default: {
                _b = m_io.ReadU2be();
                break;
            }
            }
            if (!(_b == 17217))
            {
                throw new ValidationNotEqualError(17217, _b, m_io, "/seq/1");
            }
        }
        public byte A { get { return _a; } }
        public int B { get { return _b; } }
        public ValidSwitch M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        private byte _a;
        private int _b;
        private ValidSwitch m_root;
        private KaitaiStruct m_parent;
    }
}
