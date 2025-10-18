// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class ImportsParamsDefArrayUsertypeImported : KaitaiStruct
    {
        public static ImportsParamsDefArrayUsertypeImported FromFile(string fileName)
        {
            return new ImportsParamsDefArrayUsertypeImported(new KaitaiStream(fileName));
        }

        public ImportsParamsDefArrayUsertypeImported(KaitaiStream p__io, KaitaiStruct p__parent = null, ImportsParamsDefArrayUsertypeImported p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _hws = new List<HelloWorld>();
            for (var i = 0; i < 2; i++)
            {
                _hws.Add(new HelloWorld(m_io));
            }
            _two = new ParamsDefArrayUsertypeImported(Hws, m_io);
        }
        public List<HelloWorld> Hws { get { return _hws; } }
        public ParamsDefArrayUsertypeImported Two { get { return _two; } }
        public ImportsParamsDefArrayUsertypeImported M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        private List<HelloWorld> _hws;
        private ParamsDefArrayUsertypeImported _two;
        private ImportsParamsDefArrayUsertypeImported m_root;
        private KaitaiStruct m_parent;
    }
}
