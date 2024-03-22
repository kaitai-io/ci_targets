// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class SwitchIntegers2 : KaitaiStruct
    {
        public static SwitchIntegers2 FromFile(string fileName)
        {
            return new SwitchIntegers2(new KaitaiStream(fileName));
        }

        public SwitchIntegers2(KaitaiStream p__io, KaitaiStruct p__parent = null, SwitchIntegers2 p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            f_lenModStr = false;
            _read();
        }
        private void _read()
        {
            _code = m_io.ReadU1();
            switch (Code) {
            case 1: {
                _len = m_io.ReadU1();
                break;
            }
            case 2: {
                _len = m_io.ReadU2le();
                break;
            }
            case 4: {
                _len = m_io.ReadU4le();
                break;
            }
            case 8: {
                _len = m_io.ReadU8le();
                break;
            }
            }
            _ham = m_io.ReadBytes(Len);
            if (Len > 3) {
                _padding = m_io.ReadU1();
            }
        }
        private bool f_lenModStr;
        private string _lenModStr;
        public string LenModStr
        {
            get
            {
                if (f_lenModStr)
                    return _lenModStr;
                _lenModStr = (string) ((Len * 2 - 1).ToString());
                f_lenModStr = true;
                return _lenModStr;
            }
        }
        private byte _code;
        private ulong _len;
        private byte[] _ham;
        private byte? _padding;
        private SwitchIntegers2 m_root;
        private KaitaiStruct m_parent;
        public byte Code { get { return _code; } }
        public ulong Len { get { return _len; } }
        public byte[] Ham { get { return _ham; } }
        public byte? Padding { get { return _padding; } }
        public SwitchIntegers2 M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
