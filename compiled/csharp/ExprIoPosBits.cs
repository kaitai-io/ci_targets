// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class ExprIoPosBits : KaitaiStruct
    {
        public static ExprIoPosBits FromFile(string fileName)
        {
            return new ExprIoPosBits(new KaitaiStream(fileName));
        }

        public ExprIoPosBits(KaitaiStream p__io, KaitaiStruct p__parent = null, ExprIoPosBits p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _foo = m_io.ReadBitsIntBe(3);
            if (M_Io.Pos == 1) {
                _bar = m_io.ReadBitsIntBe(5);
            }
            if (M_Io.Pos == 1) {
                _baz = m_io.ReadBitsIntBe(1) != 0;
            }
            if (M_Io.Pos == 2) {
                _qux = m_io.ReadBitsIntBe(7);
            }
        }
        private ulong _foo;
        private ulong? _bar;
        private bool? _baz;
        private ulong? _qux;
        private ExprIoPosBits m_root;
        private KaitaiStruct m_parent;
        public ulong Foo { get { return _foo; } }
        public ulong? Bar { get { return _bar; } }
        public bool? Baz { get { return _baz; } }
        public ulong? Qux { get { return _qux; } }
        public ExprIoPosBits M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
