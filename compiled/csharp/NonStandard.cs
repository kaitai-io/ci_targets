// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class NonStandard : KaitaiStruct
    {
        public static NonStandard FromFile(string fileName)
        {
            return new NonStandard(new KaitaiStream(fileName));
        }

        public NonStandard(KaitaiStream io, KaitaiStruct parent = null, NonStandard root = null) : base(io)
        {
            m_parent = parent;
            m_root = root ?? this;
            f_vi = false;
            f_pi = false;
            _read();
        }
        private void _read() {
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
        private bool f_vi;
        private byte _vi;
        public byte Vi
        {
            get
            {
                if (f_vi)
                    return _vi;
                _vi = (byte) (Foo);
                f_vi = true;
                return _vi;
            }
        }
        private bool f_pi;
        private byte _pi;
        public byte Pi
        {
            get
            {
                if (f_pi)
                    return _pi;
                long _pos = m_io.Pos;
                m_io.Seek(0);
                _pi = m_io.ReadU1();
                m_io.Seek(_pos);
                f_pi = true;
                return _pi;
            }
        }
        private byte _foo;
        private uint _bar;
        private NonStandard m_root;
        private KaitaiStruct m_parent;
        public byte Foo { get { return _foo; } }
        public uint Bar { get { return _bar; } }
        public NonStandard M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
