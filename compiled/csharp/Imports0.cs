// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class Imports0 : KaitaiStruct
    {
        public static Imports0 FromFile(string fileName)
        {
            return new Imports0(new KaitaiStream(fileName));
        }

        public Imports0(KaitaiStream p__io, KaitaiStruct p__parent = null, Imports0 p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            f_hwOne = false;
            _read();
        }
        private void _read()
        {
            _two = m_io.ReadU1();
            _hw = new HelloWorld(m_io);
        }
        private bool f_hwOne;
        private byte _hwOne;
        public byte HwOne
        {
            get
            {
                if (f_hwOne)
                    return _hwOne;
                f_hwOne = true;
                _hwOne = (byte) (Hw.One);
                return _hwOne;
            }
        }
        private byte _two;
        private HelloWorld _hw;
        private Imports0 m_root;
        private KaitaiStruct m_parent;
        public byte Two { get { return _two; } }
        public HelloWorld Hw { get { return _hw; } }
        public Imports0 M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
