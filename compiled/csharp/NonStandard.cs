// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class NonStandard : KaitaiStruct
    {
        public static NonStandard FromFile(string fileName)
        {
            return new NonStandard(new KaitaiStream(fileName));
        }

        public NonStandard(KaitaiStream p__io, KaitaiStruct p__parent = null, NonStandard p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            f_pi = false;
            f_vi = false;
            _read();
        }
        private void _read()
        {
            _foo = m_io.ReadU1();
            switch (Foo) {
            case 42: {
                _bar = m_io.ReadU2le();
                break;
            }
            case 43: {
                _bar = m_io.ReadU4le();
                break;
            }
            }
        }
        public byte Pi
        {
            get
            {
                if (f_pi)
                    return _pi;
                f_pi = true;
                long _pos = m_io.Pos;
                m_io.Seek(0);
                _pi = m_io.ReadU1();
                m_io.Seek(_pos);
                return _pi;
            }
        }
        public byte Vi
        {
            get
            {
                if (f_vi)
                    return _vi;
                f_vi = true;
                _vi = (byte) (Foo);
                return _vi;
            }
        }
        public byte Foo { get { return _foo; } }
        public uint Bar { get { return _bar; } }
        public NonStandard M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        private bool f_pi;
        private byte _pi;
        private bool f_vi;
        private byte _vi;
        private byte _foo;
        private uint _bar;
        private NonStandard m_root;
        private KaitaiStruct m_parent;
    }
}
