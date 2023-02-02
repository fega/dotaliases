document.onclick= ()=>{
  setTimeout(() => {
    const shouldHide = 
      document.querySelector('textarea')?.value.toLocaleLowerCase().includes('merge') || 
      // @todo: add more conditions here for feat fix, docs, etc
      !document.querySelector('textarea')?.value.toLocaleLowerCase().startsWith(/feat/);
    if (shouldHide){
      document.querySelector('.atlaskit-portal-container button > span > span > span[data-qa=merge-dialog-merge-button]').parentElement.parentElement.parentElement.style.display = 'none'
    } else{
      document.querySelector('.atlaskit-portal-container button > span > span > span[data-qa=merge-dialog-merge-button]').parentElement.parentElement.parentElement.style.display = ''
    }
    document.querySelector('textarea')?.addEventListener('keyup', ()=>{
      if (shouldHide){
        document.querySelector('.atlaskit-portal-container button > span > span > span[data-qa=merge-dialog-merge-button]').parentElement.parentElement.parentElement.style.display = 'none'
      } else{
        document.querySelector('.atlaskit-portal-container button > span > span > span[data-qa=merge-dialog-merge-button]').parentElement.parentElement.parentElement.style.display = ''
      }
    })  
  }, 100);
}

